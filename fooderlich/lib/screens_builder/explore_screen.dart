import 'package:flutter/material.dart';
import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/explore_data.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();
  late ScrollController _scrollController;

  // late double _scrollPosition;

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      print('i\'m at the bottom');
    }
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      print('i\'m at the top');
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (BuildContext ctx, AsyncSnapshot<ExploreData> snapshot) {
          // TODO: Add Nested List view

          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.todayRecipes ?? [];
            return ListView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: recipes),
                const SizedBox(height: 16),
                FriendPostListView(
                    friendPosts: snapshot.data?.friendPosts ?? []),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
