import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/components/profile_avatar_image.dart';
import 'package:facebook_clone/model/post.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostHead(post: post),
                Text(post.description),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: post.imageUrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PostStatistics(
              post: post,
            ),
          ),
        ],
      ),
    );
  }
}

class PostHead extends StatelessWidget {
  final Post post;
  const PostHead({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatarImage(
          profileImageUrl: post.user.profilePictureUrl,
          viewd: true,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "${post.timeAgo} - ",
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

class PostStatistics extends StatelessWidget {
  final Post post;
  const PostStatistics({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: LocalColors.blueFacebook,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                "${post.likes}",
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Text(
              "${post.comments} Comments",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              "${post.shares} Shares",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
        const Divider(thickness: 1.2),
        Row(
          children: [
            PostButton(
              icon: LineIcon.thumbsUpAlt(
                color: Colors.grey.shade700,
              ),
              text: "Like",
              onTap: () {},
            ),
            PostButton(
              icon: LineIcon.alternateCommentAlt(
                color: Colors.grey.shade700,
              ),
              text: "Comment",
              onTap: () {},
            ),
            PostButton(
              icon: LineIcon.share(
                color: Colors.grey.shade700,
              ),
              text: "Share",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class PostButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;
  const PostButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              icon,
              const SizedBox(width: 4),
              Text(
                text,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
