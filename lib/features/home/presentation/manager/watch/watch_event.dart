part of 'watch_bloc.dart';

@freezed
class WatchEvent with _$WatchEvent {
  const factory WatchEvent.loadVideos() = _LoadVideos;

  const factory WatchEvent.changeVideo({required int index}) = _WatchVideo;
}
