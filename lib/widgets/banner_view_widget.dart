import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/recipe.dart';
import 'package:food_recipe_app/widgets/custom_image_widget.dart';

class BannerViewWidget extends StatefulWidget {
  final List<Recipe> recipes;
  final Function(Recipe) onRecipeClick;

  const BannerViewWidget({
    super.key,
    required this.recipes,
    required this.onRecipeClick,
  });

  @override
  State<BannerViewWidget> createState() => _BannerViewWidgetState();
}

class _BannerViewWidgetState extends State<BannerViewWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 2.4,
              enlargeFactor: 0.2,
              autoPlay: false,
              enlargeCenterPage: true,
              disableCenter: true,
              autoPlayInterval: const Duration(seconds: 7),
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            itemCount: widget.recipes.length,
            itemBuilder: (context, index, _) {
              final recipe = widget.recipes[index];
              return InkWell(
                onTap: () => widget.onRecipeClick(recipe),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 1),
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CustomImageWidget(
                      image: recipe.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.recipes.map((recipe) {
              int index = widget.recipes.indexOf(recipe);
              int totalBanner = widget.recipes.length;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: index == currentIndex
                    ? Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 1,
                  ),
                  child: Text(
                    '${(index) + 1}/$totalBanner',
                    style: const TextStyle()
                        .copyWith(color: Colors.white, fontSize: 12),
                  ),
                )
                    : Container(
                  height: 4.18,
                  width: 5.57,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}