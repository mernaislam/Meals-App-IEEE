import 'package:flutter/material.dart';
import 'package:meals_app/theming/colors.dart';
import 'package:meals_app/views/filters_view.dart';
import 'package:meals_app/views/home_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 52, 49, 49),
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.drawerBackgroundColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/home_image_width.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.9),
            ),
            child: Text(''),
          ),
          ListTile(
            leading: const Icon(
              Icons.fastfood,
              size: 40,
              color: AppColors.white,
            ),
            title: const Text(
              'Meals',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 30,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 40,
              color: AppColors.white,
            ),
            title: const Text(
              'Filters',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 30,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FiltersView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
