part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchPosts() = _FetchPosts;

  const factory HomeEvent.fetchPostDetail({required String postId}) =
      _FetchPostDetail;
}
