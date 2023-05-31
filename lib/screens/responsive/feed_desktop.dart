import 'package:facebook_clone/components/contacts_list.dart';
import 'package:facebook_clone/components/new_post_form.dart';
import 'package:facebook_clone/components/post_card.dart';
import 'package:facebook_clone/components/stories_list.dart';
import 'package:facebook_clone/model/data_mock.dart';
import 'package:flutter/material.dart';

class FeedDesktop extends StatelessWidget {
  const FeedDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.red,
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 5,
          child: CustomScrollView(
            slivers: [
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
              // What are your thoughts? form
              SliverToBoxAdapter(
                child: NewPostForm(
                  user: currentUser,
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
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ContactList(
              users: onlineUsers,
            ),
          ),
        ),
      ],
    );
  }
}
