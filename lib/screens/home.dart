import 'package:facebook_clone/components/tab_navigator.dart';
import 'package:facebook_clone/components/tab_navigator_desktop.dart';
import 'package:facebook_clone/model/data_mock.dart';
import 'package:facebook_clone/resources/responsive.dart';
import 'package:facebook_clone/screens/feed.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final _screens = [
    const Feed(),
    const Scaffold(backgroundColor: Colors.purple),
    const Scaffold(backgroundColor: Colors.yellow),
    const Scaffold(backgroundColor: Colors.green),
    const Scaffold(backgroundColor: Colors.blue),
    const Scaffold(backgroundColor: Colors.black54),
  ];

  final _icons = <IconData>[
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcon.bell().icon!,
    Icons.menu,
  ];

  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    Size screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: _screens,
        ),
        // if Desktop, we show the TabBar on TOPs of screen
        appBar: isDesktop
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 65),
                child: TabNavigatorDesktop(
                  user: currentUser,
                  icons: _icons,
                  selectedIndex: _selectedTabIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                ),
              )
            : null,
        // if Mobile, we show the TabBar on BOTTOM of screen
        bottomNavigationBar: isDesktop
            ? null
            : SafeArea(
                child: TabNavigator(
                  selectedIndex: _selectedTabIndex,
                  icons: _icons,
                  onTap: (index) {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                ),
              ),
      ),
    );
  }
}
