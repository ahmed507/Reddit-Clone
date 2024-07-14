import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/core/common/test_values/post.dart';
import 'package:reddit_clone/core/error/failures.dart';
import 'package:reddit_clone/features/home/data/data_sources/i_posts_datasource.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/post/domain/entities/post_detail_entity.dart';

@LazySingleton(as: IPostsDatasource)
class PostsDatasource extends IPostsDatasource {
  @override
  Future<Either<Failure, PostDetailEntity>> getPostDetails(
      String postId) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final PostDetailEntity postDetail =
          posts.firstWhere((post) => post.id == postId);
      return Right(postDetail);
    } catch (e) {
      return const Left(
          Failure.serverError(message: 'Cant get posts', code: 500));
    }
  }

  @override
  Future<Either<Failure, List<PostEntity>>> getPosts() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return Right(posts);
    } catch (e) {
      return const Left(
          Failure.serverError(message: 'Cant get post details', code: 500));
    }
  }
}
