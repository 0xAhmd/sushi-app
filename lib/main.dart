import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/models/shop_model.dart';
import 'package:sushi/views/cart_view.dart';
import 'views/intro_view.dart';
import 'views/menu_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
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
        '/CartView': (context) => const CartView(),
      },

      home: const IntroView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
