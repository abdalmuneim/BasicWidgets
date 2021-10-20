import 'package:flutter/material.dart';
import 'package:recipe/models/recipe_model.dart';

class RecipeDetails extends StatefulWidget {
  final RecipeModel recipeData;

  const RecipeDetails({Key? key, required this.recipeData}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.recipeData.label,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Image(
                image: AssetImage(widget.recipeData.image),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              widget.recipeData.label,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                  fontFamily: 'Palatino'),
            ),
          ],
        ),
      ),
    );
  }
}
