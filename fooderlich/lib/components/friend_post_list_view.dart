import 'package:flutter/material.dart';
import '/components/components.dart';
import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({Key? key, required this.friendPosts})
      : super(key: key);
  final List<Post> friendPosts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs 👨‍🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 18),
          ListView.separated(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, int index) {
                final post = friendPosts[index];
                return FriendPostTile(post: post);
              },
              separatorBuilder: (context, int i) {
                return const SizedBox(height: 16);
              },
              itemCount: friendPosts.length),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
