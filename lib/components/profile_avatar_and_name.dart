import 'package:facebook_clone/components/profile_avatar_image.dart';
import 'package:facebook_clone/model/user.dart';
import 'package:flutter/material.dart';

class ProfileAvatarAndName extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const ProfileAvatarAndName(
      {Key? key, required this.user, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatarImage(
            profileImageUrl: user.profilePictureUrl,
            viewd: true,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              user.name,
              style: const TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
