import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/core/error/failures.dart';
import 'package:reddit_clone/core/usecases/usecase.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/home/domain/use_cases/get_post_details_usecase.dart';
import 'package:reddit_clone/features/home/domain/use_cases/get_posts_usecase.dart';
import 'package:reddit_clone/features/post/domain/entities/post_detail_entity.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPostsUsecase getPostsUsecase;
  final GetPostDetailsUsecase getPostDetailsUsecase;

  HomeBloc(
    this.getPostsUsecase,
    this.getPostDetailsUsecase,
  ) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        fetchPostDetail: (postId) async {
          emit(
            state.copyWith(
              isLoading: true,
              postDetail: null,
              failure: null,
            ),
          );
          final result =
              await getPostDetailsUsecase(GetPostDetailsParams(postId: postId));
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  isLoading: false,
                  postDetail: null,
                  failure: failure,
                ),
              );
            },
            (postDetail) {
              emit(
                state.copyWith(
                  isLoading: false,
                  postDetail: postDetail,
                  failure: null,
                ),
              );
            },
          );
        },
        fetchPosts: () async {
          emit(
            state.copyWith(
              isLoading: true,
              posts: [],
              failure: null,
            ),
          );
          final result = await getPostsUsecase(NoParams());
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  isLoading: false,
                  posts: [],
                  failure: failure,
                ),
              );
            },
            (posts) {
              emit(
                state.copyWith(
                  isLoading: false,
                  posts: posts,
                  failure: null,
                ),
              );
            },
          );
        },
      );
    });
  }
}
