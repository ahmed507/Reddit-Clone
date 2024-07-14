import 'package:fpdart/fpdart.dart';
import 'package:reddit_clone/core/error/failures.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/post/domain/entities/post_detail_entity.dart';

abstract class IPostsDatasource {
  Future<Either<Failure, List<PostEntity>>> getPosts();

  Future<Either<Failure, PostDetailEntity>> getPostDetails(String postId);
}
