import 'package:reddit_clone/features/post/domain/entities/user_entity.dart';

class CommentEntity {
  final String id;
  final UserEntity user;
  final String content;
  final String timeAgo;
  final int likeCount;

  CommentEntity({
    required this.id,
    required this.user,
    required this.content,
    required this.timeAgo,
    required this.likeCount,
  });
}
