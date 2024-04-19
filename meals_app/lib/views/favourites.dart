import 'package:flutter/material.dart';
import 'package:meals_app/views/recipe_view.dart';
import 'package:meals_app/views/widgets/recipe_card.dart';
import 'package:meals_app/views/widgets/recipes.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  late List<RecipeCard> favouritesList = recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Center(child: Text('Your Favourites')),
      ),
      drawer: Drawer(
          child: ListView(children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(''),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ])),
      body: SingleChildScrollView(
        child: Column(
          children: [
            favouritesList.isEmpty
                ? const Center(
                    child: Text(
                      'There are no favorites yet!',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  )
                : ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: favouritesList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipeDetailScreen(
                                  recipe: favouritesList[index]),
                            ),
                          );
                        },
                        child: favouritesList[index],
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
