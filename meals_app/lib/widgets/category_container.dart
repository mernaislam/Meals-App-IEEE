import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/views/meals_view.dart';

class CategoryContainer extends StatelessWidget {
  final Category category;
  const CategoryContainer({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MealsView(category: category),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: category.color.withOpacity(0.75),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            category.title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
