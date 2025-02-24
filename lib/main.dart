import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/core/routing/router.dart';
import 'package:flutter_recipe_app_course/presentation/saved_recipes/saved_recipes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData( //TODO: theme으로 앱바랑 배경색 하얗게 만드는 방법
        colorScheme: const ColorScheme.light(),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
    );
  }
}

