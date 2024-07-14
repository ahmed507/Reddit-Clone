class PostEntity {
  final String id;
  final String subreddit;
  final String timeAgo;
  final String title;
  final String content;
  final int commentCount;
  final int shareCount;
  final int likeCount;

  PostEntity({
    required this.id,
    required this.subreddit,
    required this.timeAgo,
    required this.title,
    required this.content,
    required this.commentCount,
    required this.shareCount,
    required this.likeCount,
  });
}
