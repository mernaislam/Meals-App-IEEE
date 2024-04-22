import 'package:meals_app/widgets/recipe_card.dart';

List<RecipeCard> recipes = const [
  RecipeCard(
    title: "Spaghetti Carbonara",
    cookTime: "20 minutes",
    rating: "4.8",
    thumbnailUrl:
        "https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-square640-v2.jpg",
    ingredients: [
      "300g Spaghetti",
      "2 Eggs",
      "150g Bacon",
      "50g Parmesan cheese",
      "1/2 tsp Black pepper",
      "2 cloves Garlic"
    ],
    steps: [
      "Cook spaghetti according to package instructions.",
      "Cook bacon until crispy, then remove and chop.",
      "In a bowl, whisk eggs, grated Parmesan cheese, and black pepper.",
      "Drain spaghetti and add to the egg mixture, tossing quickly.",
      "Add bacon, mix well, and serve hot."
    ],
  ),
  RecipeCard(
    title: "Chicken Alfredo Pasta",
    cookTime: "30 minutes",
    rating: "4.6",
    thumbnailUrl:
        "https://thecozycook.com/wp-content/uploads/2022/08/Chicken-Alfredo-Pasta-1-1.jpg",
    ingredients: [
      "300g Fettuccine pasta",
      "2 Chicken breasts",
      "200ml Heavy cream",
      "100g Parmesan cheese",
      "3 cloves Garlic",
      "2 tbsp Butter",
      "Salt",
      "Pepper"
    ],
    steps: [
      "Cook fettuccine pasta according to package instructions.",
      "Season chicken breast with salt and pepper, then cook until golden brown.",
      "In a separate pan, melt butter and sauté minced garlic until fragrant.",
      "Pour in heavy cream and simmer until slightly thickened.",
      "Add grated Parmesan cheese, stirring until melted.",
      "Toss cooked pasta in the sauce, then add sliced chicken breast.",
      "Serve hot with additional Parmesan cheese on top."
    ],
  ),
  RecipeCard(
    title: "Veggie Stir Fry",
    cookTime: "15 minutes",
    rating: "4.5",
    thumbnailUrl:
        "https://natashaskitchen.com/wp-content/uploads/2020/08/Vegetable-Stir-Fry-2.jpg",
    ingredients: [
      "1 Red bell pepper",
      "1 Green bell pepper",
      "1 cup Broccoli florets",
      "1 Carrot",
      "1 cup Mushrooms",
      "3 tbsp Soy sauce",
      "2 cloves Garlic",
      "1 tsp Ginger",
      "2 tbsp Vegetable oil",
      "Cooked rice"
    ],
    steps: [
      "Heat vegetable oil in a pan or wok over medium-high heat.",
      "Add minced garlic and ginger, stir for a minute until fragrant.",
      "Add sliced vegetables and stir-fry until tender-crisp.",
      "Pour in soy sauce, stirring well to coat the vegetables.",
      "Serve hot over cooked rice."
    ],
  ),
];
