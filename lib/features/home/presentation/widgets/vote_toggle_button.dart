import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class VoteToggleButtons extends StatefulWidget {
  final int likeCount;
  final void Function() onTapVoteSave;

  const VoteToggleButtons({
    super.key,
    required this.likeCount,
    required this.onTapVoteSave,
  });

  @override
  State<VoteToggleButtons> createState() => _VoteToggleButtonsState();
}

class _VoteToggleButtonsState extends State<VoteToggleButtons> {
  List<bool> _isSelected = [false, false];
  late int _likeCount;

  @override
  void initState() {
    super.initState();
    _likeCount = widget.likeCount;
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      constraints: BoxConstraints.loose(const Size(60, 60)),
      isSelected: _isSelected,
      onPressed: (int index) {
        widget.onTapVoteSave();
        setState(() {
          // Allow only one button to be selected at a time
          _isSelected = [false, false];
          _isSelected[index] = !_isSelected[index];
          if (index == 0) {
            _likeCount = widget.likeCount + 1;
          } else {
            _likeCount = widget.likeCount - 1;
          }
        });
      },
      children: <Widget>[
        _likeCount <= 0
            ? const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(MingCute.large_arrow_up_line),
              )
            : Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    const Icon(MingCute.large_arrow_up_line),
                    const SizedBox(width: 4),
                    Text(
                      '${_likeCount}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
        const Padding(
          padding: EdgeInsets.all(4),
          child: Icon(MingCute.large_arrow_down_line),
        ),
      ],
    );
  }
}
