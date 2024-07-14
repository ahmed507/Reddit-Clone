import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/core/error/failures.dart';
import 'package:reddit_clone/core/usecases/usecase.dart';
import 'package:reddit_clone/features/home/domain/repositories/i_posts_repo.dart';
import 'package:reddit_clone/features/post/domain/entities/post_detail_entity.dart';

@injectable
class GetPostDetailsUsecase
    extends UseCase<PostDetailEntity, GetPostDetailsParams> {
  final IPostsRepo postsRepo;

  GetPostDetailsUsecase(this.postsRepo);

  @override
  Future<Either<Failure, PostDetailEntity>> call(
      GetPostDetailsParams params) async {
    return await postsRepo.getPostDetails(params.postId);
  }
}

class GetPostDetailsParams {
  final String postId;

  GetPostDetailsParams({required this.postId});
}
