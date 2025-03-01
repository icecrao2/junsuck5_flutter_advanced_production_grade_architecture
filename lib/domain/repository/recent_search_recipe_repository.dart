import '../model/recipe.dart';

abstract interface class RecentSearchRecipeRepository {
  Future<List<Recipe>> getRecipes();

  Future<void> updateRecentSearchRecipes(List<Recipe> recipes);
}