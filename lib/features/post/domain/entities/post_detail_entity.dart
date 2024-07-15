import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/post/domain/entities/comment_entity.dart';
import 'package:reddit_clone/features/post/domain/entities/user_entity.dart';

class PostDetailEntity extends PostEntity {
  final UserEntity user;
  final List<CommentEntity> comments;

  PostDetailEntity({
    required this.user,
    required this.comments,
    required super.id,
    required super.subreddit,
    required super.timeAgo,
    required super.title,
    required super.content,
    required super.commentCount,
    required super.shareCount,
    required super.likeCount,
    required super.type,
  });
}
