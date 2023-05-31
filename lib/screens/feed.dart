import 'package:facebook_clone/resources/responsive.dart';
import 'package:facebook_clone/screens/responsive/feed_desktop.dart';
import 'package:facebook_clone/screens/responsive/feed_mobile.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: FeedMobile(),
        desktop: FeedDesktop(),
      ),
    );
  }
}
