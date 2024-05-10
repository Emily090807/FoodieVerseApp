import 'package:flutter/material.dart';
import 'package:food_recipe_app/favorites_provider.dart';
import 'package:food_recipe_app/screens/recipe.dart';
import 'package:provider/provider.dart';
import 'package:food_recipe_app/screens/recipe_detail_screen.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = context.watch<FavoritesProvider>();
    final favorites = favoritesProvider.favorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body: favorites.isEmpty
          ? Center(
        child: Text('No favorite recipes yet.'),
      )
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (BuildContext context, int index) {
          final recipe = favorites[index];
          return FoodListItem(
            recipe: recipe,
            isFavourite: true,
            onFavoriteToggle: () {
              favoritesProvider.toggleFavorite(recipe);
            },
          );
        },
      ),
    );
  }
}

class FoodListItem extends StatelessWidget {
  final Recipe recipe;
  final bool isFavourite;
  final VoidCallback onFavoriteToggle;

  const FoodListItem({
    super.key,
    required this.recipe,
    required this.isFavourite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(recipe.name),
      trailing: IconButton(
        icon: Icon(
          isFavourite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: onFavoriteToggle,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailScreen(
              recipe: recipe,
            ),
          ),
        );
      },
    );
  }
}