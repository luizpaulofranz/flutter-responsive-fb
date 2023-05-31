import 'package:facebook_clone/components/profile_avatar_and_name.dart';
import 'package:facebook_clone/model/user.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OptionsList extends StatelessWidget {
  final User user;

  final List<List> _opcoes = const [
    [LineIcons.userFriends, LocalColors.blueFacebook, "Friends"],
    [LineIcons.facebookMessenger, LocalColors.blueFacebook, 'Messages'],
    [LineIcons.flag, Colors.orange, 'Pages'],
    [LineIcons.users, LocalColors.blueFacebook, 'Groups'],
    [Icons.storefront_outlined, LocalColors.blueFacebook, 'Marketplace'],
    [Icons.ondemand_video, Colors.red, 'Watch'],
    [LineIcons.calendar, Colors.deepPurple, 'Events'],
    [LineIcons.chevronCircleDown, Colors.black45, 'See more'],
  ];

  const OptionsList({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: 1 + _opcoes.length,
      itemBuilder: (context, indice) {
        if (indice == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: ProfileAvatarAndName(
              user: user,
              onTap: () {},
            ),
          );
        }

        List item = _opcoes[indice - 1];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Option(
            icon: item[0],
            color: item[1],
            text: item[2],
            onTap: () {},
          ),
        );
      },
    );
  }
}

class Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onTap;

  const Option({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: color,
            size: 35,
          ),
          const SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
