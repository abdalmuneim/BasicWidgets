import 'package:flutter/material.dart';
import 'package:recipe/screens_builder/details_screen.dart';
import '../models/recipe_model.dart';
import '../services/recipe_data.dart';

class RecipeApp extends StatefulWidget {
  final String title;

  const RecipeApp({Key? key, required this.title}) : super(key: key);

  @override
  _RecipeAppState createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  late List<RecipeModel> _recipeData;

  @override
  void initState() {
    _recipeData = RecipeData.recipeData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: _recipeData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  RecipeDetails(recipeData: _recipeData[index])));
              },
              child: buildRecipeCard(_recipeData[index]),
            );
          },
        ),
      ),
    );
  }

  buildRecipeCard(RecipeModel recipe) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(recipe.image),
            ),
            const SizedBox(height: 14.0),
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
