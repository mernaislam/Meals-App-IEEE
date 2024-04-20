import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottom_navigation_bar.dart';
import 'package:meals_app/widgets/categories_grid.dart';
import 'package:meals_app/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/meals_background.jpg'),
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(133, 0, 0, 0),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
            size: 32,
          ),
          title: const Text(
            'Categories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 52, 49, 49),
        ),
        drawer: const CustomDrawer(),
        body: const CategoriesGrid(),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

