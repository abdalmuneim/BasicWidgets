import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/models/explore_recipe.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  final ExploreRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(recipe.backgroundImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20,
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.headline1,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                recipe.message,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
      ),
    );
  }
}
