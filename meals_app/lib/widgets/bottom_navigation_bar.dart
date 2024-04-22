import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: idx,
      onTap: (value) {
        setState(() {
          idx = value;
        });
        if (value == 1 &&
            ModalRoute.of(context)!.settings.name != '/favourites') {
          Navigator.pushReplacementNamed(context, '/favourites');
        } else if (value == 0 && ModalRoute.of(context)!.settings.name != '/') {
          Navigator.pushReplacementNamed(context, '/');
        }
      },
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      selectedItemColor: const Color.fromARGB(255, 248, 154, 88),
      backgroundColor: const Color.fromARGB(255, 52, 49, 49),
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
    );
  }
}
