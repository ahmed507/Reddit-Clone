part of 'watch_bloc.dart';

@freezed
class WatchState with _$WatchState {
  const factory WatchState({
    required List<VideoEntity> videos,
    required bool isLoading,
    required bool hasError,
    required String errorMessage,
    required int prevVideo,
    required int actualScreen,
  }) = _WatchState;

  factory WatchState.initial() => const WatchState(
        videos: [],
        isLoading: false,
        hasError: false,
        errorMessage: '',
        prevVideo: -1,
        actualScreen: 0,
      );
}
