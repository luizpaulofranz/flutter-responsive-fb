import 'package:facebook_clone/model/user.dart';

class Post {
  final User user;
  final String description;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  Post({
    required this.user,
    required this.description,
    required this.imageUrl,
    this.timeAgo = 'Few seconds',
    this.likes = 0,
    this.comments = 0,
    this.shares = 0,
  });
}
