import 'package:flutter_recipe_app_course/domain/model/recipe.dart';

abstract interface class RecipeDataSource {
  Future<List<Map<String, dynamic>>> getRecipes();
}