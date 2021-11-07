import 'package:flutter/material.dart';
import 'package:fooderlich/components/components.dart';
import '../api/mock_fooderlich_service.dart';
import '../models/models.dart';

class RecipesScreen extends StatelessWidget {
  RecipesScreen({Key? key}) : super(key: key);

  final exploreService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder:
            (BuildContext context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return RecipesGridView(recipes: snapshot.data ?? []);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
