class Ingredients {
  double Qty;
  String name;
  String measure;

  Ingredients(this.Qty, this.name, this.measure);
}

class Recipe {
  String RecipeName;
  String RecipeURL;
  int servings;
  List<Ingredients> ingredients;
  Recipe(this.RecipeName, this.RecipeURL, this.servings, this.ingredients);
}


// List<Recipe> MyRecipe = [
//   Recipe("Nihari", "assets/nihari.jpg"),
//   Recipe("Achar Ghosht", "assets/acharghosht.jpg"),
//   Recipe("Korma", "assets/korma.jpg"),
//   Recipe("Haleem", "assets/haleem.jpg"),
// ];
