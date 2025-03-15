import 'package:flutter/material.dart';
import 'views/intro_view.dart';
import 'views/menu_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/MenuView': (context) => const MenuView(),
        '/IntroView': (context) => const IntroView(),
      },

      home: const IntroView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
