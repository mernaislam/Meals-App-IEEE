import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';

final favouritesProvider =
    StateNotifierProvider<FavouritesNotifier, List<Meal>>(
        (ref) => FavouritesNotifier());

class FavouritesNotifier extends StateNotifier<List<Meal>> {
  FavouritesNotifier() : super([dummyMeals[0], dummyMeals[2]]);

  void add(Meal meal) {
    state = [...state, meal];
  }

  void remove(Meal meal) {
    state = state.where((element) => element != meal).toList();
  }
}
