class RecipeModel {
  final String image;
  final String label;
  final int servings;
  final List<Ingredient> ingredients;

  RecipeModel({
    required this.image,
    required this.label,
    required this.servings,
    required this.ingredients,
  });
}

class Ingredient {
  final double quantity;
  final String measure;
  final String name;

  Ingredient({
    required this.quantity,
    required this.measure,
    required this.name,
  });
}
