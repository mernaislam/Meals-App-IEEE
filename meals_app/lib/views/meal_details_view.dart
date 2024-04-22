import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/favourites_notifier.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_details_body.dart';

class MealDetailsView extends ConsumerWidget {
  final Meal meal;

  const MealDetailsView({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouritesList = ref.watch(favouritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              favouritesList.contains(meal)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red,
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
      backgroundColor: const Color.fromARGB(255, 176, 173, 173),
      body: MealDetailsBody(
        meal: meal,
      ),
    );
  }
}
