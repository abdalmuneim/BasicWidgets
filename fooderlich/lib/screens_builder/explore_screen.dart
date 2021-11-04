import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {

    // TODO 1: Add TodayRecipeListView FutureBuilder
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}
