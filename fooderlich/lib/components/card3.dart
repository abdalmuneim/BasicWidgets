import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/models/explore_recipe.dart';

class Card3 extends StatelessWidget {
  const Card3({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  final ExploreRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    recipe.title,
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 20,
                children: [
                  buildChip('Healthy'),
                  buildChip('Vegan'),
                  buildChip('Carrots'),
                  buildChip('Greens'),
                  buildChip('Wheat'),
                  buildChip('Pescetarian'),
                  buildChip('Mint'),
                  buildChip('Lemongrass'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Chip buildChip(String title) {
    return Chip(
      label: Text(
        title,
        style: FooderlichTheme.darkTextTheme.bodyText1,
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
    );
  }
}
