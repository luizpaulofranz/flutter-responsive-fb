import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final void Function(int) onTap;

  const TabNavigator({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: LocalColors.blueFacebook,
              width: 3,
            ),
          ),
        ),
        tabs: icons
            .asMap()
            .map(
              (index, icon) {
                return MapEntry(
                  index,
                  Tab(
                    icon: Icon(
                      icon,
                      color: selectedIndex == index
                          ? LocalColors.blueFacebook
                          : Colors.black54,
                      size: 30,
                    ),
                  ),
                );
              },
            )
            .values
            .toList());
  }
}
