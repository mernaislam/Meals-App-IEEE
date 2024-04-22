import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/views/home_view.dart';
// import 'package:meals_app/views/favourites_view.dart';
// import 'package:meals_app/views/home_view.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/': (ctx) => HomePage(),
      //   '/favourites': (ctx) => Favourites(),
      // },
      title: 'Food Recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
