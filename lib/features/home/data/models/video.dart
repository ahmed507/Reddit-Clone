import 'package:video_player/video_player.dart';

class Video {
  String id;
  String videoTitle;
  String url;
  String subReddit;
  int likesNum;
  int commentsNum;
  int sharesNum;

  VideoPlayerController? controller;

  Video({
    required this.id,
    required this.videoTitle,
    required this.url,
    required this.subReddit,
    this.likesNum = 0,
    this.commentsNum = 0,
    this.sharesNum = 0,
  });

  Future<Null> loadController() async {
    controller = VideoPlayerController.networkUrl(Uri.parse(url));
    await controller?.initialize();
    controller?.setLooping(true);
  }

  void dispose() {
    controller?.dispose();
  }
}
