import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/domain/repository/recent_search_recipe_repository.dart';
import 'package:flutter_recipe_app_course/presentation/search/search_state.dart';
import 'package:flutter_recipe_app_course/presentation/saved_recipes/saved_recipes_state.dart';

class SearchViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  SearchState _state = const SearchState();
  SearchState get state => _state;

  SearchViewModel({
    required RecentSearchRecipeRepository recentSearchRecipeRepository
  }) : _recentSearchRecipeRepository = recentSearchRecipeRepository {
    _loadRecentSearchRecipes();
  }

  void _loadRecentSearchRecipes() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      recipes: await _recentSearchRecipeRepository.getRecipes(),
      isLoading: false
    );
    notifyListeners();
  }

}
