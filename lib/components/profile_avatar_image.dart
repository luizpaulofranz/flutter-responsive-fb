import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';

class ProfileAvatarImage extends StatelessWidget {
  final String profileImageUrl;
  final bool viewd;
  const ProfileAvatarImage({
    super.key,
    required this.profileImageUrl,
    this.viewd = false,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: LocalColors.blueFacebook,
      child: CircleAvatar(
        radius: viewd ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(profileImageUrl),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
