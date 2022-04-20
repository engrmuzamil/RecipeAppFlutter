import 'class.dart';

List<Recipe> getRecipeList() {
  List<Recipe> MyRecipe = <Recipe>[];
  List<Ingredients> MyIng = <Ingredients>[];

  Ingredients instance = new Ingredients(3, "Chiken", "KG");
  MyIng.add(instance);

  instance = new Ingredients(1, "Nihari Masala", "PCK");
  MyIng.add(instance);

  Recipe Instance = new Recipe("Nihari", "assets/nihari.jpg", 12, [
    Ingredients(1, "Nihari Masala", "PCK"),
    Ingredients(3, "Chiken", "KG"),
  ]);
  MyRecipe.add(Instance);

  instance = new Ingredients(3, "Ghosht", "KG");
  MyIng.add(instance);

  instance = new Ingredients(1, "AcharGhosht Masala", "PCK");
  MyIng.add(instance);
  Instance = new Recipe("Achar Ghosht", "assets/acharghosht.jpg", 12, [
    Ingredients(3, "Ghosht", "KG"),
    Ingredients(1, "AcharGhosht Masala", "PCK")
  ]);
  MyRecipe.add(Instance);

  instance = new Ingredients(3, "Chiken", "KG");
  MyIng.add(instance);
  instance = new Ingredients(1, "Korma Masla", "PCK");
  MyIng.add(instance);
  Instance = new Recipe("Korma", "assets/korma.jpg", 12, [
    Ingredients(3, "Chiken", "KG"),
    Ingredients(1, "Korma Masla", "PCK"),
  ]);
  MyRecipe.add(Instance);

  instance = new Ingredients(3, "Daal", "KG");
  MyIng.add(instance);
  instance = new Ingredients(1, "Haleem Masala", "PCK");
  MyIng.add(instance);
  Instance = new Recipe("Haleem", "assets/haleem.jpg", 12, [
    Ingredients(3, "Daal", "KG"),
    Ingredients(1, "Haleem Masala", "PCK"),
  ]);
  MyRecipe.add(Instance);

  return MyRecipe;
}
