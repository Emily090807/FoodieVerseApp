import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/recipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Recipe> _favorites = [];
  bool _isInitialized = false;

  List<Recipe> get favorites => List.unmodifiable(_favorites);

  Future<void> init() async {
    if (_isInitialized) return;

    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getStringList('favorites') ?? [];
    _favorites.addAll(favoritesJson.map((json) => Recipe.fromJson(jsonDecode(json))).toList());
    _isInitialized = true;
  }

  void toggleFavorite(Recipe recipe) async {
    final isExisting = _favorites.contains(recipe);

    if (isExisting) {
      _favorites.remove(recipe);
    } else {
      _favorites.add(recipe);
    }

    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = _favorites.map((recipe) => jsonEncode(recipe.toJson())).toList();
    await prefs.setStringList('favorites', favoritesJson);

    notifyListeners();
  }

  bool isFavorite(Recipe recipe) {
    return _favorites.contains(recipe);
  }
}