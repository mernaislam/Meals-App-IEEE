import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/favourites_notifier.dart';
import 'package:meals_app/widgets/bottom_navigation_bar.dart';
import 'package:meals_app/widgets/custom_drawer.dart';
import 'package:meals_app/widgets/meal_container.dart';

class Favourites extends ConsumerWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use WidgetRef instead of ScopedReader
    final meals = ref.watch(favouritesProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 173, 173),
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 52, 49, 49),
        title: Text(
          "Favourites",
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
      bottomNavigationBar: const CustomBottomNavigationBar(),
      drawer: const CustomDrawer(),
    );
  }
}
