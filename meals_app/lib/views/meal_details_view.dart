import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_details_body.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Meal meal;
  const RecipeDetailScreen({super.key, required this.meal});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(widget.meal.title),
        backgroundColor: const Color.fromARGB(255, 52, 49, 49),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: IconButton(
              icon: Icon(
                isFavourite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  isFavourite = !isFavourite;
                });
              },
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 176, 173, 173),
      body: MealDetailsBody(
        meal: widget.meal,
      ),
    );
  }
}
