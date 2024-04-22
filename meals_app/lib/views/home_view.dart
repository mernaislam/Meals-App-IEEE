import 'package:flutter/material.dart';
import 'package:meals_app/theming/colors.dart';
import 'package:meals_app/views/favourites_view.dart';
import 'package:meals_app/widgets/categories_grid.dart';
import 'package:meals_app/widgets/custom_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _idx = 0;

  final _screens = [
    const CategoriesGrid(),
    const FavouritesList(),
  ];

  final titles = [
    'Categories',
    'Favorites',
  ];

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
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: AppColors.white,
            size: 32,
          ),
          title: Text(
            titles[_idx],
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColors.barColor,
        ),
        backgroundColor: AppColors.backgroundColor,
        drawer: const CustomDrawer(),
        body: _screens[_idx],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _idx,
          onTap: (value) {
            setState(() {
              _idx = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.white,
          selectedItemColor: AppColors.orange,
          backgroundColor: AppColors.barColor,
          items: const [
            BottomNavigationBarItem(
              label: 'Categories',
              icon: Icon(
                Icons.category,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(
                Icons.star,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
