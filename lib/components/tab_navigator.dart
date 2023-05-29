import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final void Function(int) onTap;
  final bool bottomIndicator;

  const TabNavigator({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
    this.bottomIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: BoxDecoration(
          border: bottomIndicator
              ? const Border(
                  bottom: BorderSide(
                    color: LocalColors.blueFacebook,
                    width: 3,
                  ),
                )
              : const Border(
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
