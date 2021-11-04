import 'package:flutter/material.dart';
import 'package:fooderlich/components/card1.dart';
import '../models/explore_recipe.dart';
import 'card2.dart';
import 'card3.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext ctx, int index) {
                  final recipe = recipes[index];
                  return buildCard(recipe);
                },
                separatorBuilder: (BuildContext ctx, int i) {
                  return const SizedBox(width: 16);
                },
                itemCount: recipes.length),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('this card doesn\'t exist yet');
    }
  }
}
