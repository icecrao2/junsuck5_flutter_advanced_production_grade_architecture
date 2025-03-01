import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/recipe_card.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/recipe_grid_item.dart';
import 'package:flutter_recipe_app_course/presentation/search/search_state.dart';
import 'package:flutter_recipe_app_course/ui/text_styles.dart';

import '../../../core/presentation/components/search_input_field.dart';
import '../../../ui/color_styles.dart';

class SearchScreen extends StatelessWidget {
  final SearchState state;

  const SearchScreen({
    super.key,
    required this.state
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search recipes',
          style: TextStyles.mediumTextBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 17,),
            Row(
              children: [
                const Expanded(
                  child: SearchInputField(
                    placeHolder: 'Search Recipe',
                  )
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorStyles.secondary40),
                  child: const Icon(
                    Icons.tune,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            const Text(
              'Recent Search',
              style: TextStyles.normalTextBold,
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: state.isLoading ? const Center(child: CircularProgressIndicator(),) : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15
                ),
                itemCount: state.recipes.length,
                itemBuilder: (context, index) {
                  return RecipeGridItem(
                    recipe: state.recipes[index]
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
