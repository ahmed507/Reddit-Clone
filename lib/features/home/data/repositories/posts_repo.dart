import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/core/error/failures.dart';
import 'package:reddit_clone/features/home/data/data_sources/i_posts_datasource.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/home/domain/repositories/i_posts_repo.dart';
import 'package:reddit_clone/features/post/domain/entities/post_detail_entity.dart';

@LazySingleton(as: IPostsRepo)
class PostsRepo extends IPostsRepo {
  final IPostsDatasource datasource;

  PostsRepo(this.datasource);

  @override
  Future<Either<Failure, PostDetailEntity>> getPostDetails(
      String postId) async {
    return await datasource.getPostDetails(postId);
  }

  @override
  Future<Either<Failure, List<PostEntity>>> getPosts() async {
    return await datasource.getPosts();
  }
}
