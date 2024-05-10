import 'package:flutter/material.dart';
import 'package:food_recipe_app/favorites_provider.dart';
import 'package:food_recipe_app/screens/recipe.dart';
import 'package:food_recipe_app/widgets/custom_image_widget.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    final favoritesProvider = context.read<FavoritesProvider>();
    _isFavorite = favoritesProvider.isFavorite(widget.recipe);
  }

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = context.read<FavoritesProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
        actions: [
          IconButton(
            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
              favoritesProvider.toggleFavorite(widget.recipe);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  widget.recipe.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    final controller = YoutubePlayerController.of(context);
                    controller?.play();
                  },
                  child: YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: widget.recipe.videoId,
                      flags: const YoutubePlayerFlags(
                        autoPlay: false,
                      ),
                    ),
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Instructions:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              ...widget.recipe.instructions.map((instruction) {
                final stepNumber = widget.recipe.instructions.indexOf(instruction) + 1;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Step $stepNumber: $instruction',
                    style: TextStyle(fontSize: 16),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}