import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/recipe_detail_screen.dart';
import 'package:food_recipe_app/screens/recipe.dart';
import 'package:food_recipe_app/widgets/banner_view_widget.dart';
import 'package:food_recipe_app/widgets/custom_image_widget.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var newFood = [
      "Snacks",
      "Pizza",
      "Noodles",
      "Sweets",
      "French",
      "Italiano"
    ];

    List<Recipe> christmasDishes = [
      Recipe(
        name: 'Roast Turkey',
        videoId:"XO5DF8soxwM",
        imageUrl: 'https://images.unsplash.com/photo-1574672280600-4accfa5b6f98?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Um9hc3QlMjBUdXJrZXl8ZW58MHx8MHx8fDA%3D',
        instructions: [
          'Preheat oven to 325°F (165°C).',
          'Rinse the turkey and pat it dry with paper towels.',
          'Stuff the turkey cavity with your desired stuffing mixture.',
          'Tie the legs together with kitchen string and tuck the wing tips under.',
          'Brush the turkey with melted butter or oil and season with salt and pepper.',
          'Place the turkey on a roasting rack in a roasting pan and add some broth or water to the bottom of the pan.',
          'Roast for about 3-4 hours, basting every 30 minutes, until the internal temperature reaches 165°F (75°C) in the thickest part of the thigh and breast.',
          'Let the turkey rest for 20-30 minutes before carving and serving.'
        ],
      ),
      Recipe(
        name: 'Christmas Ham',
        videoId:"c5KOthuMywA",
        imageUrl: 'https://plus.unsplash.com/premium_photo-1664391747379-b7d777d02281?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fENocmlzdG1hcyUyMEhhbXxlbnwwfHwwfHx8MA%3D%3D',
        instructions: [
          'Preheat oven to 325°F (165°C).',
          'Remove the ham from its packaging and place it in a roasting pan, flat side down.',
          'Score the ham in a diamond pattern, making shallow cuts across the top.',
          'Stud the ham with cloves, if desired, and brush with a glaze (e.g., honey, mustard, or brown sugar).',
          'Pour about 1 cup of water or broth into the bottom of the roasting pan.',
          'Cover the ham loosely with foil and bake for about 1.5-2 hours, basting occasionally with the glaze.',
          'Remove the foil and continue baking for another 30 minutes to crisp up the exterior.',
          'Let the ham rest for 15 minutes before slicing and serving.'
        ],
      ),
      Recipe(
        name: 'Yule Log Cake',
        videoId:"zVBGZ27DXpQ",
        imageUrl: 'https://plus.unsplash.com/premium_photo-1687568576850-d263e5206f74?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8WXVsZSUyMExvZyUyMENha2V8ZW58MHx8MHx8fDA%3D',
        instructions: [
          'Preheat oven to 375°F (190°C) and grease a jelly roll pan.',
          'In a large bowl, whisk together the eggs and sugar until light and fluffy.',
          'Sift in the flour and cocoa powder, and gently fold into the egg mixture.',
          'Spread the batter evenly in the prepared jelly roll pan and bake for 10-12 minutes.',
          'Remove from the oven and immediately invert the cake onto a clean kitchen towel dusted with powdered sugar.',
          'Carefully roll up the cake with the towel and let it cool completely.',
          'Prepare the filling by whipping together cream cheese, powdered sugar, and vanilla extract.',
          'Unroll the cooled cake and spread the filling evenly over it, then carefully re-roll the cake without the towel.',
          'Frost the outside of the rolled cake with chocolate buttercream and decorate with plastic or marzipan decorations to resemble a log.'
        ],
      ),
      Recipe(
        name: 'Eggnog',
        videoId:"dUZ7tX8WIL8",
        imageUrl: 'https://plus.unsplash.com/premium_photo-1669880504199-4c9ab85255f9?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fEVnZ25vZ3xlbnwwfHwwfHx8MA%3D%3D',
        instructions: [
          'In a large saucepan, whisk together the egg yolks and sugar until combined.',
          'Gradually whisk in the milk and heavy cream, and add the vanilla extract and nutmeg.',
          'Cook the mixture over medium heat, stirring constantly, until it reaches 160°F (71°C).',
          'Remove from heat and let cool slightly, then stir in the rum or brandy (if using).',
          'In a separate bowl, beat the egg whites until stiff peaks form.',
          'Gently fold the egg whites into the eggnog mixture until fully incorporated.',
          'Chill the eggnog in the refrigerator for at least 2 hours before serving.',
          'Garnish with extra nutmeg or whipped cream, if desired.'
        ],
      ),
      Recipe(
        name: 'Gingerbread Cookies',
        videoId:"brZVMqRlc5w",
        imageUrl: 'https://images.unsplash.com/photo-1610562275255-03b7fa0d4655?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8R2luZ2VyYnJlYWQlMjBDb29raWVzfGVufDB8fDB8fHww',
        instructions: [
          'Preheat oven to 350°F (175°C) and line baking sheets with parchment paper.',
          'In a large bowl, cream together the butter and brown sugar until light and fluffy.',
          'Beat in the molasses, egg, and vanilla extract.',
          'In a separate bowl, whisk together the flour, baking soda, salt, ginger, cinnamon, and cloves.',
          'Gradually add the dry ingredients to the wet ingredients and mix until well combined.',
          'Roll out the dough to about 1/4-inch thickness on a lightly floured surface.',
          'Cut out shapes with cookie cutters and place them on the prepared baking sheets.',
          'Bake for 8-10 minutes, or until lightly browned on the edges.',
          'Let cool on the baking sheets for 5 minutes before transferring to a wire rack to cool completely.',
          'Decorate with royal icing or sprinkles, if desired.'
        ],
      ),
    ];


    List<Recipe> newFoodRecipes = [
      Recipe(
          name: 'Burger',
        videoId:"BIG1h2vG-Qg",
        imageUrl: 'https://source.unsplash.com/ISVtBKNhJ2g',
        instructions: [
          'Preheat grill or grill pan to medium-high heat.',
          'In a bowl, gently mix together the ground beef, salt, pepper, and any other desired seasonings.',
          'Divide the mixture into equal portions and form into patties.',
          'Brush the grill or grill pan with oil or cooking spray.',
          'Cook the patties for about 4-5 minutes per side, or until cooked to your desired doneness.',
          'Toast the buns on the grill or in a toaster oven, if desired.',
          'Assemble the burgers by placing the patties on the buns and adding your desired toppings (e.g., lettuce, tomato, onion, cheese, condiments).',
          'Serve hot and enjoy!'
        ],
      ),
      Recipe(
        name: 'Sandwich',
        videoId:"0BptkEQWOIc",
        imageUrl: 'https://source.unsplash.com/RAA3BzHlM4M',
        instructions: [
          'Choose your desired bread (e.g., sliced bread, rolls, baguette).',
          'Prepare your fillings (e.g., sliced meat, cheese, vegetables, condiments).',
          'Spread butter or mayonnaise on one side of each bread slice or roll.',
          'Layer the fillings on one slice or roll, starting with the meat or cheese.',
          'Add any desired condiments (e.g., mustard, mayo, ketchup) and vegetables (e.g., lettuce, tomato, onion).',
          'Top with the other slice or roll to complete the sandwich.',
          'If desired, grill or toast the sandwich in a panini press or skillet.',
          'Cut the sandwich in half and serve immediately.'
        ],
      ),
      // Add more recipes for the other items in the `newFood` list
    ];

    List<Recipe> carouselRecipes = [
      Recipe(
        name: 'Pizza Margherita',
        videoId:"vcfNpDtVqOw",
        imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHx8MHx8fDA%3D',
        instructions: [
          'Preheat the oven to 450°F (230°C).',
          'Prepare the pizza dough according to your preferred recipe or use store-bought dough.',
          'Roll or stretch the dough into a circle or rectangle shape.',
          'Transfer the dough to a pizza peel or baking sheet.',
          'Spread tomato sauce evenly over the dough, leaving a small border around the edges.',
          'Arrange fresh mozzarella cheese slices or shredded mozzarella over the sauce.',
          'Garnish with fresh basil leaves and drizzle with olive oil.',
          'Bake in the preheated oven for 12-15 minutes, or until the crust is golden and the cheese is melted and bubbly.',
          'Remove from the oven and let cool for a few minutes before slicing and serving.'
        ],
      ),
      Recipe(
        name: 'Pepperoni Pizza',
        videoId:"HCAPjIVOdJw",
        imageUrl: 'https://images.unsplash.com/photo-1579751626657-72bc17010498?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBpenphfGVufDB8fDB8fHww',
        instructions: [
          'Preheat the oven to 450°F (230°C).',
          'Prepare the pizza dough according to your preferred recipe or use store-bought dough.',
          'Roll or stretch the dough into a circle or rectangle shape.',
          'Transfer the dough to a pizza peel or baking sheet.',
          'Spread tomato sauce evenly over the dough, leaving a small border around the edges.',
          'Sprinkle shredded mozzarella cheese over the sauce.',
          'Arrange slices of pepperoni evenly over the cheese.',
          'Optionally, add other toppings like mushrooms, onions, or bell peppers.',
          'Bake in the preheated oven for 12-15 minutes, or until the crust is golden and the cheese is melted and bubbly.',
          'Remove from the oven and let cool for a few minutes before slicing and serving.'
        ],
      ),
      Recipe(
        name: 'Veggie Pizza',
        videoId:"kSb62MGJSI4",
        imageUrl: 'https://source.unsplash.com/jsZKLRi7toU',
        instructions: [
          'Preheat the oven to 450°F (230°C).',
          'Prepare the pizza dough according to your preferred recipe or use store-bought dough.',
          'Roll or stretch the dough into a circle or rectangle shape.',
          'Transfer the dough to a pizza peel or baking sheet.',
          'Spread tomato sauce or pesto evenly over the dough, leaving a small border around the edges.',
          'Sprinkle shredded mozzarella cheese over the sauce.',
          'Arrange sliced vegetables like bell peppers, onions, mushrooms, olives, and tomatoes over the cheese.',
          'Optionally, add other toppings like spinach, artichoke hearts, or feta cheese.',
          'Bake in the preheated oven for 12-15 minutes, or until the crust is golden and the cheese is melted and bubbly.',
          'Remove from the oven and let cool for a few minutes before slicing and serving.'
        ],
      ),
      Recipe(
        name: 'Hawaiian Pizza',
        videoId:"DeI_vyZfHxM",
        imageUrl: 'https://source.unsplash.com/huuwBI6KpGU',
        instructions: [
          'Preheat the oven to 450°F (230°C).',
          'Prepare the pizza dough according to your preferred recipe or use store-bought dough.',
          'Roll or stretch the dough into a circle or rectangle shape.',
          'Transfer the dough to a pizza peel or baking sheet.',
          'Spread tomato sauce evenly over the dough, leaving a small border around the edges.',
          'Sprinkle shredded mozzarella cheese over the sauce.',
          'Arrange sliced ham or Canadian bacon and pineapple chunks over the cheese.',
          'Optionally, add other toppings like sliced onions, jalapeños, or bacon bits.',
          'Bake in the preheated oven for 12-15 minutes, or until the crust is golden and the cheese is melted and bubbly.',
          'Remove from the oven and let cool for a few minutes before slicing and serving.'
        ],
      ),
    ];
    void handleCarouselRecipeClick(Recipe recipe) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RecipeDetailScreen(recipe: recipe),
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            flexibleSpace: SearchBar(), // Custom search text field
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'WHAT WILL YOU \nMAKE TODAY?',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Let\'s make pizza!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BannerViewWidget(
                    recipes: carouselRecipes,
                    onRecipeClick: handleCarouselRecipeClick,
                  ), // Custom carousel of network images
                  const Text(
                    'TRY SOMETHING NEW',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 180,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: newFoodRecipes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImageListTile(
                            imageUrl: newFoodRecipes[index].imageUrl,
                            title: newFoodRecipes[index].name,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RecipeDetailScreen(
                                    recipe: newFoodRecipes[index],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const Text(
                    'CHRISTMAS SPECIAL',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ImageListTile(
                  imageUrl: christmasDishes[index].imageUrl,
                  title: christmasDishes[index].name,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(
                          recipe: christmasDishes[index],
                        ),
                      ),
                    );
                  },
                );
              },
              childCount: christmasDishes.length,

            ),
    ),
        ],
      ),
    );
  }
}

// class SearchBar extends StatelessWidget {
//   const SearchBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
//       alignment: Alignment.center,
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Search...',
//           contentPadding: const EdgeInsets.only(top: 12, left: 12),
//           suffixIcon: const Icon(Icons.search),
//           border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8.0),
//               borderSide: BorderSide(color: Colors.grey.shade400)),
//         ),
//       ),
//     );
//   }
// }

class ImageListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  const ImageListTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 100,
            color: Colors.grey[200],
            child: Stack(
              children: <Widget>[
                CustomImageWidget(
                    image: imageUrl, width: MediaQuery.of(context).size.width),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
