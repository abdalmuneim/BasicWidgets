import 'package:flutter/material.dart';
import '/components/circle_image.dart';
import 'package:fooderlich/main.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        const SizedBox(width: 16),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.comment),
            Text(
              '${post.timestamp} mins age',
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        )),
      ],
    );
  }
}
