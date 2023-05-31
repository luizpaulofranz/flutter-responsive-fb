import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/components/profile_avatar_image.dart';
import 'package:facebook_clone/model/data_mock.dart';
import 'package:facebook_clone/model/story.dart';
import 'package:facebook_clone/model/user.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:facebook_clone/resources/responsive.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  final User user;
  final List<Story> stories;

  const StoriesList({
    super.key,
    required this.user,
    required this.stories,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Container(
      height: 200,
      color: isDesktop ? Colors.transparent : Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        // one more because the first item is a CTA to add a story
        itemCount: 1 + stories.length,
        itemBuilder: (context, index) {
          Story story;

          if (index == 0) {
            story = Story(
              user: currentUser,
              pictureUrl: currentUser.profilePictureUrl,
            );
          } else {
            story = stories[index - 1];
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: StoryCard(
              story: story,
              addNewStory: index == 0,
            ),
          );
        },
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final Story story;
  final bool addNewStory;
  const StoryCard({
    super.key,
    required this.story,
    this.addNewStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // we just use this to add a border radius on image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.pictureUrl,
            height: double.maxFinite,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.maxFinite,
          width: 110,
          decoration: BoxDecoration(
            gradient: LocalColors.gradientStory,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: addNewStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: LocalColors.blueFacebook,
                    ),
                  ),
                )
              : ProfileAvatarImage(
                  profileImageUrl: story.user.profilePictureUrl,
                  viewd: story.viewed,
                ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            addNewStory ? "Add story" : story.user.name,
            style: const TextStyle(color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
