import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (BuildContext ctx, AsyncSnapshot<ExploreData> snapshot) {
          // TODO: Add Nested List view

          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.todayRecipes ?? [];
            return TodayRecipeListView(recipes: recipes);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
