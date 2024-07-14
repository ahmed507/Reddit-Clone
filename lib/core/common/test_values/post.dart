import 'dart:math';

import 'package:reddit_clone/features/post/domain/entities/comment_entity.dart';
import 'package:reddit_clone/features/post/domain/entities/post_detail_entity.dart';
import 'package:reddit_clone/features/post/domain/entities/user_entity.dart';

final random = Random();

String getRandomId() => '${random.nextInt(1000)}';

String getRandomTimeAgo() {
  int time = random.nextInt(24) + 1;
  return '${time}h';
}

String getRandomName() => [
      'John Doe',
      'Jane Smith',
      'Alex Johnson',
      'Emily Davis',
      'Michael Brown'
    ][random.nextInt(5)];

String getRandomNickname() => [
      'johndoe',
      'janesmith',
      'alexjohnson',
      'emilydavis',
      'michaelbrown'
    ][random.nextInt(5)];

String getRandomAvatar() =>
    'https://i.pravatar.cc/150?img=${random.nextInt(70) + 1}';

String getRandomSubreddit() => [
      'FlutterDev',
      'DartLang',
      'TechNews',
      'MobileDev',
      'Programming'
    ][random.nextInt(5)];

String getRandomTitle() => [
      'Flutter 2.5 is now available',
      'Dart 2.14 released',
      '10 Tips for Mobile Development',
      'Understanding Null Safety in Dart',
      'State Management in Flutter'
    ][random.nextInt(5)];

String getRandomContent() => [
      'Flutter 2.5 is now available. This release is our biggest update yet with more than 100 new features and improvements.',
      'Dart 2.14 has been released with major updates and performance improvements.',
      'Here are 10 tips for mobile development that can help you build better apps.',
      'Understanding null safety in Dart is crucial for robust application development.',
      'State management in Flutter can be done in various ways. Here\'s a guide to help you choose the right approach.'
    ][random.nextInt(5)];

List<CommentEntity> generateRandomComments(int count) =>
    List.generate(count, (index) {
      return CommentEntity(
        id: getRandomId(),
        content: 'This is a comment #${index + 1}',
        timeAgo: getRandomTimeAgo(),
        likeCount: random.nextInt(10),
        user: UserEntity(
          id: getRandomId(),
          name: getRandomName(),
          avatar: getRandomAvatar(),
          nickname: getRandomNickname(),
        ),
      );
    });

final List<PostDetailEntity> posts = List.generate(25, (index) {
  return PostDetailEntity(
    id: getRandomId(),
    comments: generateRandomComments(random.nextInt(10)),
    user: UserEntity(
      id: getRandomId(),
      name: getRandomName(),
      avatar: getRandomAvatar(),
      nickname: getRandomNickname(),
    ),
    subreddit: getRandomSubreddit(),
    timeAgo: getRandomTimeAgo(),
    title: getRandomTitle(),
    content: getRandomContent(),
    commentCount: random.nextInt(50) + 1,
    shareCount: random.nextInt(20) + 1,
    likeCount: random.nextInt(100) + 1,
  );
});
