import 'package:facebook_clone/components/circle_button.dart';
import 'package:facebook_clone/components/profile_avatar_and_name.dart';
import 'package:facebook_clone/components/tab_navigator.dart';
import 'package:facebook_clone/model/user.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class TabNavigatorDesktop extends StatelessWidget {
  final User user;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const TabNavigatorDesktop(
      {Key? key,
      required this.user,
      required this.icons,
      required this.selectedIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "facebook",
              style: TextStyle(
                color: LocalColors.blueFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Expanded(
            child: TabNavigator(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              bottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ProfileAvatarAndName(
                  user: user,
                  onTap: () {},
                ),
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30,
                  onPressed: () {},
                ),
                CircleButton(
                  icon: LineIcons.facebookMessenger,
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
