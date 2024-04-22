import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/favourites_notifier.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/theming/colors.dart';
import 'package:meals_app/widgets/meal_details_body.dart';

class MealDetailsView extends ConsumerWidget {
  final Meal meal;

  const MealDetailsView({super.key, required this.meal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouritesList = ref.watch(favouritesProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.barColor,
        foregroundColor: AppColors.white,
        title: Text(meal.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              favouritesList.contains(meal)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: AppColors.favoritesIconColor,
            ),
            onPressed: () {
              if (favouritesList.contains(meal)) {
                ref.read(favouritesProvider.notifier).remove(meal);
              } else {
                ref.read(favouritesProvider.notifier).add(meal);
              }
            },
          ),
        ],
      ),
      backgroundColor: AppColors.bodyBackgroundColor,
      body: MealDetailsBody(
        meal: meal,
      ),
    );
  }
}
