import 'package:facebook_clone/components/circle_button.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// We Use CustomScrollView to build a page with slivers
      body: CustomScrollView(
        slivers: [
          /// This is a specific Sliver to replace AppBar
          /// it has several AppBar + Sliver properties
          SliverAppBar(
            // This we can use to show specific widgets when the appBar is expanded
            // we can set the appBar scrolling effects etc.
            // flexibleSpace: FlexibleSpaceBar(
            //   background: Image.asset('myasset'),
            // ),

            backgroundColor: Colors.orange,
            // this is the max size of a sliver appBar
            // expandedHeight: 250,

            // This is to make the appBar hide when scroll up, but floating appears again immediately after a scroll up
            floating: true,

            // instead of floating we could use pinned, to fix the appBar on the top (never hide)
            // pinned: true,
            centerTitle: false,
            title: const Text(
              "facebook",
              style: TextStyle(
                  color: LocalColors.blueFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30,
                onPressed: () {},
              ),
              CircleButton(
                icon: LineIcons.facebookMessenger,
                iconSize: 30,
                onPressed: () {},
              )
            ],
          ),

          /// This Sliver is like a Container, good to define the screen body
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 2000,
            ),
          )
        ],
      ),
    );
  }
}
