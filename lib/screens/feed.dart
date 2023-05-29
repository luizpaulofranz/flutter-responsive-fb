import 'package:facebook_clone/components/circle_button.dart';
import 'package:facebook_clone/components/new_post_form.dart';
import 'package:facebook_clone/components/post_card.dart';
import 'package:facebook_clone/components/stories_list.dart';
import 'package:facebook_clone/model/data_mock.dart';
import 'package:facebook_clone/resources/local_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// We need CustomScrollView to build a page with slivers
      /// inside this, we must use Sliver Widgets, if we try to use commom widgets here we'll get an error
      /// https://www.youtube.com/watch?v=E3-WdYBrEDc
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

            backgroundColor: Colors.white,
            // this is the max size of a sliver appBar
            // expandedHeight: 250,

            // This is to make the appBar hide when scroll down, but floating appears again immediately after a scroll up
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
                letterSpacing: -1.2,
              ),
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
          // What are your thoughts? form
          SliverToBoxAdapter(
            child: NewPostForm(
              user: currentUser,
            ),
          ),
          // Stories carousell
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: StoriesList(
                user: currentUser,
                stories: storiesList,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final post = posts[index];
                return PostCard(post: post);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
