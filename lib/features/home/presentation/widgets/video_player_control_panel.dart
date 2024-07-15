// ignore_for_file: depend_on_referenced_packages
import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullscreen_window/fullscreen_window.dart';
import 'package:sprintf/sprintf.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class JkVideoControlPanel extends StatefulWidget {
  final VideoPlayerController controller;
  final Widget? header;
  final Widget? footerUp;
  final Widget? footerDown;

  const JkVideoControlPanel({
    super.key,
    required this.controller,
    this.header,
    this.footerUp,
    this.footerDown,
  });

  @override
  State<JkVideoControlPanel> createState() => _JkVideoControlPanelState();
}

class _JkVideoControlPanelState extends State<JkVideoControlPanel>
    with TickerProviderStateMixin {
  final focusNode = FocusNode();

  late final AnimationController panelAnimController = AnimationController(
      duration: const Duration(milliseconds: 300), vsync: this);
  late final panelAnimation =
      panelAnimController.drive(Tween<double>(begin: 0.0, end: 1.0));
  late final AnimationController volumeAnimController = AnimationController(
      duration: const Duration(milliseconds: 100), vsync: this);
  late final volumeAnimation =
      volumeAnimController.drive(Tween<double>(begin: 0.0, end: 1.0));

  final displayPosition = ValueNotifier<int>(
      0); // position to display for user, when user dragging seek bar, this value changed by user dragging, not changed by player's position

  final duration = ValueNotifier<Duration>(Duration.zero);
  final playing = ValueNotifier<bool>(false);
  final buffering = ValueNotifier<bool>(false);
  final volumeValue = ValueNotifier<double>(1.0);
  final controllerValue = ValueNotifier<int>(
      0); // used to notify fullscreen widget that controller changed

  final hasClosedCaptionFile = ValueNotifier<bool>(false);
  final currentCaption = ValueNotifier<String>("");

  bool isMouseMode = false;
  final panelVisibility = ValueNotifier<bool>(
      false); // is panel visible, used to show/hide mouse cursor, and enable/disable click on buttons on panel

  bool isDraggingVolumeBar = false;
  bool isMouseInVolumeBar = false;

  bool isPlayEnded = false;
  bool isFullscreenVisible = false;

  void onPlayerValueChanged() {
    final playerValue = widget.controller.value;
    bool isInitializing = !playerValue.isInitialized && !playerValue.hasError;

    if (!playing.value && playerValue.isPlaying && panelVisibility.value) {
      // if paused -> playing, auto hide panel
      showPanel();
    }

    duration.value = playerValue.duration;
    playing.value = playerValue.isPlaying;
    volumeValue.value = playerValue.volume;
    buffering.value = playerValue.isBuffering || isInitializing;

    // don't update progress by player's position when seeking
    if (!m_delaySeeking) {
      displayPosition.value = playerValue.position.inMilliseconds;
    }

    hasClosedCaptionFile.value = widget.controller.closedCaptionFile != null;
    currentCaption.value = playerValue.caption.text;

    if (playerValue.isInitialized &&
        playerValue.duration.inMilliseconds > 0 &&
        playerValue.position.compareTo(playerValue.duration) >= 0) {
      if (!isPlayEnded) {
        isPlayEnded = true;
        playing.value = false;
      }
    } else {
      isPlayEnded = false;
    }
  }

  double volumeBeforeMute = 1.0;

  void toggleVolumeMute() {
    if (volumeValue.value > 0) {
      volumeBeforeMute = math.max(volumeValue.value, 0.3);
      widget.controller.setVolume(0);
    } else {
      widget.controller.setVolume(volumeBeforeMute);
    }
  }

  double iconSize = 10;
  double textSize = 5;

  void evaluateTextIconSize() async {
    var size = await FullScreenWindow.getScreenSize(context);
    double min = math.min(size.width, size.height);
    if (kIsWeb || Platform.isWindows) {
      iconSize = min / 30;
    } else {
      // android / iOS
      iconSize = min / 15;
    }

    textSize = iconSize * 0.55;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(onPlayerValueChanged);
    evaluateTextIconSize();
    onPlayerValueChanged();
  }

  @override
  void didUpdateWidget(JkVideoControlPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller.removeListener(onPlayerValueChanged);
      widget.controller.addListener(onPlayerValueChanged);
      onPlayerValueChanged();
      setState(() {});
      Future.delayed(Duration.zero).then((value) {
        controllerValue
            .value++; //notify fullscreen widget to rebuild, async delay is needed
      });
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    widget.controller.removeListener(onPlayerValueChanged);
    panelAnimController.dispose();
    volumeAnimController.dispose();
    if (isFullscreenVisible) Navigator.of(context).pop();
    super.dispose();
  }

  String duration2TimeStr(Duration duration) {
    if (widget.controller.value.duration.inHours > 0) {
      return sprintf("%02d:%02d:%02d",
          [duration.inHours, duration.inMinutes % 60, duration.inSeconds % 60]);
    }
    return sprintf(
        "%02d:%02d", [duration.inMinutes % 60, duration.inSeconds % 60]);
  }

  Timer? _hidePanelTimer;

  void showPanel() {
    panelVisibility.value = true;
    panelAnimController.forward();
    _hidePanelTimer?.cancel();
    _hidePanelTimer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      if (isMouseInVolumeBar || isDraggingVolumeBar) return;
      if (!playing.value) return; //don't auto hide when paused
      panelVisibility.value = false;
      panelAnimController.reverse();
      _hidePanelTimer = null;
    });
  }

  bool isPanelShown() => panelAnimController.value > 0;

  void togglePanel() {
    if (_hidePanelTimer != null) {
      _hidePanelTimer?.cancel();
      panelVisibility.value = false;
      panelAnimController.reverse();
      _hidePanelTimer = null;
    } else {
      showPanel();
    }
  }

  void togglePlayPause() {
    if (!widget.controller.value.isInitialized) return;
    if (widget.controller.value.isPlaying) {
      widget.controller.pause();
    } else {
      widget.controller.play();
    }
  }

  int m_lastSeekTimestamp = 0;
  Timer? m_delaySeekTimer;
  bool m_delaySeeking = false;

  Future<void> doSeek(int ms) async {
    m_delaySeekTimer?.cancel();
    int now = DateTime.now().millisecondsSinceEpoch;
    int elapsed = now - m_lastSeekTimestamp;
    m_lastSeekTimestamp = now;
    m_delaySeeking = true;

    if (elapsed > 300 || elapsed < 0) {
      await widget.controller.seekTo(Duration(milliseconds: ms));
      m_delaySeeking = false;
    } else {
      const delay = Duration(milliseconds: 300);
      m_delaySeekTimer = Timer.periodic(delay, (timer) async {
        m_delaySeekTimer = null;
        timer.cancel();
        await widget.controller.seekTo(Duration(milliseconds: ms));
        m_delaySeeking = false;
      });
    }
  }

  void incrementalSeek(int ms) async {
    showPanel();
    int dst = displayPosition.value + ms;
    if (dst < 0) {
      dst = 0;
    } else if (dst >= widget.controller.value.duration.inMilliseconds) {
      return;
    }

    displayPosition.value = dst;
    await doSeek(dst);
  }

  Widget createPlayPauseButton(bool isCircle, double size) {
    return ValueListenableBuilder<bool>(
        valueListenable: playing,
        builder: (context, value, child) {
          return IconButton(
            iconSize: size,
            icon: Icon(
                isCircle
                    ? (value ? Icons.pause_circle : Icons.play_circle)
                    : (value ? Icons.pause : Icons.play_arrow),
                color: Colors.white),
            onPressed: () {
              if (isMouseMode) {
                togglePlayPause();
              } else {
                if (isPanelShown()) {
                  togglePlayPause();
                  showPanel();
                } else {
                  togglePanel();
                }
              }
            },
          );
        });
  }

  Widget createMuteButton(double size) {
    return ValueListenableBuilder<double>(
        valueListenable: volumeValue,
        builder: (context, value, child) {
          return IconButton(
            iconSize: size,
            icon: Icon(value > 0 ? Icons.volume_up : Icons.volume_off,
                color: Colors.white),
            onPressed: () {
              toggleVolumeMute();
              showPanel();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Widget seekBar = ValueListenableBuilder<int>(
      valueListenable: displayPosition,
      builder: (context, value, child) {
        return Slider.adaptive(
          focusNode: g_AlwaysDisabledFocusNode,
          value:
              displayPosition.value < 0 ? 0 : displayPosition.value.toDouble(),
          min: 0,
          max: duration.value.inMilliseconds.toDouble(),
          onChanged: (double value) {
            showPanel();
            displayPosition.value = value.toInt();
            doSeek(value.toInt());
          },
        );
      },
    );

    seekBar = SliderTheme(
      data: const SliderThemeData(
          thumbColor: Colors.white,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Colors.white70,
          trackHeight: 1,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7)),
      child: SizedBox(height: iconSize * 0.7, child: seekBar),
    );

    Widget remianingText = ValueListenableBuilder<int>(
      valueListenable: displayPosition,
      builder: (context, value, child) {
        var duration = Duration(milliseconds: value);
        return Text(
            duration2TimeStr(widget.controller.value.duration - duration),
            style: TextStyle(fontSize: textSize, color: Colors.white));
      },
    );

    Widget bottomPanel = Row(children: [
      // toggle play/pause button
      createPlayPauseButton(false, iconSize),
      seekBar,
      remianingText,
      createMuteButton(iconSize),
    ]);

    bottomPanel = Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.transparent, Colors.transparent]),
      ),
      child: bottomPanel,
    );

    int lastTapDownTime = 0;
    Widget gestureWidget = GestureDetector(
      onTapUp: (details) {
        int now = DateTime.now().millisecondsSinceEpoch;
        if (now - lastTapDownTime > 300) {
          if (isMouseMode) {
            togglePlayPause();
          } else {
            togglePanel();
          }
        } else {
          var width = context.size!.width;
          if (details.localPosition.dx < width / 2) {
            incrementalSeek(-5000);
          } else {
            incrementalSeek(5000);
          }
          showPanel();
        }
        lastTapDownTime = now;
        focusNode.requestFocus();
      },
    );

    Widget bufferingWidget = ValueListenableBuilder<bool>(
        valueListenable: buffering,
        builder: (context, value, child) {
          if (value) {
            return Center(
              child: SizedBox(
                width: iconSize * 3,
                height: iconSize * 3,
                child: const CircularProgressIndicator(),
              ),
            );
          } else {
            return Container();
          }
        });

    Widget panelWidget = Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.header ?? Container(),
            Spacer(),
            widget.footerUp ?? Container(),
            bottomPanel,
            widget.footerDown ?? Container(),
          ],
        ),

        // Positioned(
        //     left: 0, top: 0, right: 0, child: widget.header ?? Container()),
        gestureWidget,
        // Positioned(left: 0, bottom: 0, right: 0, child: bottomPanel),
      ],
    );

    panelWidget = FadeTransition(opacity: panelAnimation, child: panelWidget);

    panelWidget = ValueListenableBuilder<bool>(
      valueListenable: panelVisibility,
      builder: (context, value, child) =>
          IgnorePointer(ignoring: !value, child: child),
      child: panelWidget,
    );

    panelWidget = Stack(children: [
      gestureWidget,
      panelWidget,
    ]);

    panelWidget = Focus(
      autofocus: true,
      focusNode: focusNode,
      child: panelWidget,
      onKeyEvent: (node, event) {
        if (event.logicalKey == LogicalKeyboardKey.space) {
          if (widget.controller.value.isInitialized) {
            if (event is KeyUpEvent) {
              showPanel();
              togglePlayPause();
            }
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          if (widget.controller.value.isInitialized) {
            if (event is! KeyUpEvent) incrementalSeek(-5000);
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (widget.controller.value.isInitialized) {
            if (event is! KeyUpEvent) incrementalSeek(5000);
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
    );

    panelWidget = ValueListenableBuilder<bool>(
      valueListenable: panelVisibility,
      builder: ((context, value, child) {
        return MouseRegion(
          cursor: panelVisibility.value
              ? SystemMouseCursors.basic
              : SystemMouseCursors.none,
          child: child,
          onHover: (_) {
            // NOTE: touch on android will cause onHover... why ???
            if (isMouseMode) {
              showPanel();
            }
          },
          onEnter: (_) => isMouseMode = true,
          onExit: (_) => isMouseMode = false,
        );
      }),
      child: panelWidget,
    );

    Widget videoWidget = Center(
      child: VideoPlayer(widget.controller),
    );

    Widget allWidgets = Stack(
      children: [
        videoWidget,
        bufferingWidget,
        panelWidget,
      ],
    );

    return allWidgets;
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

final g_AlwaysDisabledFocusNode = AlwaysDisabledFocusNode();
