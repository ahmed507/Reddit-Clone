import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/core/error/failures.dart';
import 'package:reddit_clone/core/usecases/usecase.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/home/domain/repositories/i_posts_repo.dart';

@injectable
class GetPostsUsecase extends UseCase<List<PostEntity>, NoParams> {
  final IPostsRepo postsRepo;

  GetPostsUsecase(this.postsRepo);

  @override
  Future<Either<Failure, List<PostEntity>>> call(NoParams params) async {
    return await postsRepo.getPosts();
  }
}
