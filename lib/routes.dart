import 'package:cuisine/addRecipe.dart';
import 'package:cuisine/searchRecipe.dart';
import 'package:cuisine/home.dart';
import 'package:cuisine/favourite.dart';
import 'package:cuisine/recipeDesc.dart';
import 'package:cuisine/recipe.dart';
import 'package:flutter/material.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/addRecipe': (context) => const AddRecipe(),
  '/searchRecipe': (context) => const SearchRecipe(),
  '/favourite': (context) => const Favourite(),
  '/recipeDesc': (context) => const RecipeDesc(),
};
