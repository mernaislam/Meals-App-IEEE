import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/favourites_notifier.dart';
import 'package:meals_app/theming/colors.dart';
import 'package:meals_app/widgets/meal_container.dart';

class FavouritesList extends ConsumerWidget {
  const FavouritesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use WidgetRef instead of ScopedReader
    final meals = ref.watch(favouritesProvider);

    return meals.isEmpty
        ? const Center(
            child: Text(
              "You have no favourite meals. \nStart adding!",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.white,
              ),
              textAlign: TextAlign.center,
            ),
          )
        : ListView.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) => MealContainer(
              meal: meals[index],
            ),
          );
  }
}
