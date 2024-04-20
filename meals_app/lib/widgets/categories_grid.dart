import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/widgets/category_container.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (_, index) => CategoryContainer(
        category: availableCategories[index],
      ),
      itemCount: availableCategories.length,
    );
  }
}
