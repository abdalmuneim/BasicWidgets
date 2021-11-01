import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              )
            ],
          ),

          //  TODO: Add Icon Button
          IconButton(
            onPressed: () {
              isFavorite == false
                  ? buildSnackBar(context, 'add to favorite')
                  : buildSnackBar(context, 'Removed from favorite');
            },
            icon: const Icon(
              Icons.favorite_border,
            ),
            color: Colors.grey[400],
            iconSize: 30,
          ),
        ],
      ),
    );
  }

  bool isFavorite = false;

  buildSnackBar(BuildContext context, String title) {
    var snackBar = SnackBar(
      content: Text(title),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
