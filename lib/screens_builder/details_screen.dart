import 'package:flutter/material.dart';
import 'package:recipe/models/recipe_model.dart';

class RecipeDetails extends StatefulWidget {
  final RecipeModel recipeData;

  const RecipeDetails({Key? key, required this.recipeData}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderVal = 1;

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
            const SizedBox(height: 4.0),
            Text(
              widget.recipeData.label,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                  fontFamily: 'Palatino'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: ListView.builder(
                  itemCount: widget.recipeData.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipeData.ingredients[index];
                    return Text(
                      '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}',
                    );
                  },
                ),
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipeData.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newVal) {
                setState(() {
                  _sliderVal = newVal.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
