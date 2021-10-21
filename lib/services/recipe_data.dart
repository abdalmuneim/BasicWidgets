import 'package:recipe/models/recipe_model.dart';

class RecipeData {
  static List<RecipeModel> recipeData = [
    RecipeModel(
      image: 'assets/Spaghetti.jpg',
      label: 'Spaghetti and Meatballs',
      servings: 4,
      ingredients: [
        Ingredient(quantity: 1, measure: 'box', name: 'Spaghetti'),
        Ingredient(quantity: 4, measure: '', name: 'Frozen Meatballs'),
        Ingredient(quantity: 0.5, measure: 'jar', name: 'Sauce'),
      ],
    ),
    RecipeModel(
      image: 'assets/Tomato.jpg',
      label: 'Tomato Soup',
      servings: 2,
      ingredients: [
        Ingredient(quantity: 1, measure: 'Can', name: 'Tomato Soup'),
      ],
    ),
    RecipeModel(
      image: 'assets/Grilled.jpg',
      label: 'Grilled Cheese',
      servings: 1,
      ingredients: [
        Ingredient(quantity: 2, measure: 'Slices', name: 'Cheese'),
        Ingredient(quantity: 2, measure: 'Slices', name: 'Bread'),
      ],
    ),
    RecipeModel(
      image: 'assets/Chocolate.jpg',
      label: 'Chocolate Chip Cookies',
      servings: 24,
      ingredients: [
        Ingredient(quantity: 4, measure: 'Cups', name: 'flour'),
        Ingredient(quantity: 2, measure: 'Cups', name: 'sugar'),
        Ingredient(quantity: 0.5, measure: 'Cups', name: 'chocolate chips'),
      ],
    ),
    RecipeModel(
      image: 'assets/Taco.jpg',
      label: 'Taco Salad',
      servings: 1,
      ingredients: [
        Ingredient(quantity: 4, measure: 'oz', name: 'nachos'),
        Ingredient(quantity: 3, measure: 'oz', name: 'taco meat'),
        Ingredient(quantity: 0.5, measure: 'cup', name: 'cheese'),
        Ingredient(quantity: 0.25, measure: 'cup', name: 'chopped tomatoes'),
      ],
    ),
    RecipeModel(
      image: 'assets/Pizza.jpg',
      label: 'Hawaiian Pizza',
      servings: 4,
      ingredients: [
        Ingredient(quantity: 1, measure: 'item', name: 'pizza'),
        Ingredient(quantity: 1, measure: 'cup', name: 'pineapple'),
        Ingredient(quantity: 8, measure: 'oz', name: 'ham'),
      ],
    ),
  ];
}
