import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/theming/colors.dart';
import 'package:meals_app/widgets/meal_container.dart';

class MealsView extends ConsumerStatefulWidget {
  final Category category;
  const MealsView({
    super.key,
    required this.category,
  });

  @override
  ConsumerState<MealsView> createState() => _MealsViewState();
}

class _MealsViewState extends ConsumerState<MealsView> {
  late List<Meal> meals;
  late List<Meal> allMeals;
  bool _isSorted = false;

  @override
  Widget build(BuildContext context) {
    allMeals = ref.watch(filteredMealsProvider);
    meals = allMeals
        .where(
          (element) => element.categories.contains(widget.category.id),
        )
        .toList();
    if (_isSorted) {
      meals.sort(
        (a, b) => a.duration.compareTo(b.duration),
      );
    }
    return Scaffold(
      backgroundColor: AppColors.bodyBackgroundColor,
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: widget.category.color,
        title: Text(
          widget.category.title,
          style: const TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: TextButton.icon(
              onPressed: () {
                if (_isSorted) {
                  _isSorted = false;
                  setState(() {});
                } else {
                  _isSorted = true;
                }
                setState(() {});
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.white,
              ),
              icon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.compare_arrows,
                ),
              ),
              label: Text(
                _isSorted ? 'Default' : 'Sort',
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealContainer(meal: meals[index]),
      ),
    );
  }
}
