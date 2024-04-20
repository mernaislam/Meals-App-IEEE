import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/widgets/meal_container.dart';

class MealsView extends StatelessWidget {
  final Category category;
  const MealsView({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final meals = dummyMeals
        .where(
          (element) => element.categories.contains(category.id),
        )
        .toList();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 173, 173),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: category.color,
        title: Text(
          category.title,
          style: const TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealContainer(meal: meals[index]),
      ),
    );
  }
}
