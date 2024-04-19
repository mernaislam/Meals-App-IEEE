import 'package:flutter/material.dart';

import 'widgets/recipe_card.dart';

class RecipeDetailScreen extends StatefulWidget {
  final RecipeCard recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
        elevation: 10,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: IconButton(
              icon: Icon(
                isFavourite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  isFavourite = !isFavourite;
                });
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Image.network(widget.recipe.thumbnailUrl, errorBuilder:
                    (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                  return const Text('Cannot load image');
                }),
              ),
              Text(
                'Cooking Time: ${widget.recipe.cookTime}',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text('Ingredients',
                  style: TextStyle(fontSize: 24, color: Colors.black)),
              for (var ingredient in widget.recipe.ingredients)
                Text('• $ingredient',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              Text('Steps',
                  style: TextStyle(fontSize: 24, color: Colors.black)),
              for (var step in widget.recipe.steps)
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('• $step',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              // Add other fields as needed
            ],
          ),
        ),
      ),
    );
  }
}
