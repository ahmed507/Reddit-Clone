part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<PostEntity> posts,
    PostDetailEntity? postDetail,
    required bool isLoading,
    required Failure? failure,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        posts: [],
        postDetail: null,
        isLoading: false,
        failure: null,
      );
}
