import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/features/home/data/models/video.dart';

part 'watch_bloc.freezed.dart';
part 'watch_event.dart';
part 'watch_state.dart';

class WatchBloc extends Bloc<WatchEvent, WatchState> {
  List<Video> videoSource = [
    Video(
      id: '1',
      videoTitle: 'Video 1',
      url:
          'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
      subReddit: 'r/zz',
      commentsNum: 10,
      likesNum: 0,
      sharesNum: 30,
    ),
    Video(
      id: '2',
      videoTitle: 'Video 2',
      url:
          'https://file-examples.com/storage/fe0e9b723466913cf9611b7/2017/04/file_example_MP4_480_1_5MG.mp4',
      subReddit: 'r/AA',
      commentsNum: 10,
      likesNum: 1,
      sharesNum: 30,
    ),
    Video(
      id: '3',
      videoTitle: 'Video 3',
      url: 'https://download.samplelib.com/mp4/sample-5s.mp4',
      subReddit: 'r/AWWW',
      commentsNum: 10,
      likesNum: 2,
      sharesNum: 30,
    ),
  ];

  WatchBloc() : super(WatchState.initial()) {
    on<WatchEvent>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          hasError: false,
          errorMessage: '',
        ));
        await event.when(
          loadVideos: () async {
            emit(state.copyWith(
              videos: videoSource,
            ));
            for (int i = 0; i < 1; i++) {
              await videoSource[i].loadController();
              await videoSource[i].controller?.play();
            }
            emit(state.copyWith(
              isLoading: false,
            ));
          },
          changeVideo: (index) async {
            emit(state.copyWith(
              isLoading: true,
              hasError: false,
              errorMessage: '',
            ));
            try {
              if (videoSource[index].controller == null) {
                await videoSource[index].loadController();
              }
              await videoSource[index].controller!.play();
              //videoSource.listVideos[prevVideo].controller.removeListener(() {});

              if (state.prevVideo >= 0) {
                if (videoSource[state.prevVideo].controller != null) {
                  await videoSource[state.prevVideo].controller!.pause();
                }
              }

              emit(state.copyWith(
                isLoading: false,
                hasError: false,
                errorMessage: '',
                prevVideo: index - 1,
                actualScreen: 0,
              ));
            } catch (e) {
              emit(
                state.copyWith(
                  isLoading: false,
                  hasError: true,
                  errorMessage: e.toString(),
                ),
              );
            }
          },
        );
      },
    );
  }
}
