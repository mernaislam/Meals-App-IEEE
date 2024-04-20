import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailsBody extends StatelessWidget {
  final Meal meal;
  const MealDetailsBody({
    super.key,
    required this.meal,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.network(
                meal.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (
                  BuildContext context,
                  Object exception,
                  StackTrace? stackTrace,
                ) {
                  return const Text('Cannot load image');
                },
              ),
            ),
          ),
          const Text(
            'Ingredients',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 119, 61, 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          for (var ingredient in meal.ingredients)
            Text(
              '• $ingredient',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Steps',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 119, 61, 17),
            ),
          ),
          for (var step in meal.steps)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 40),
              alignment: Alignment.centerLeft,
              child: Text(
                '• $step',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          // Add other fields as needed
        ],
      ),
    );
  }
}
