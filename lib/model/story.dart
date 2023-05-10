import 'user.dart';

class Story {
  final User user;
  final String pictureUrl;
  final bool viewed;

  Story({
    required this.user,
    required this.pictureUrl,
    this.viewed = false,
  });
}
