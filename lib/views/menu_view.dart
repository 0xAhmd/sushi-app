import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_text_field.dart';
import '../components/food_tile.dart';
import '../components/popular_tile.dart';
import '../components/promo_tile.dart';
import '../models/food_model.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List<Food> foodMenu = [
    Food(
      name: "Sushi",
      imagePath: 'assets/images/sushiz.png',
      price: "20",
      rating: "4.0",
    ),

    Food(
      name: "Ramen",
      imagePath: 'assets/images/ramen.png',
      price: "60",
      rating: "5.0",
    ),

    Food(
      name: "tampura",
      imagePath: 'assets/images/tempura.png',
      price: "40",
      rating: '4.5',
    ),

    Food(
      name: "Takoyaki",
      imagePath: "assets/images/takoyaki.png",
      price: "30",
      rating: "4.2",
    ),

    Food(
      name: "Yakitori",
      imagePath: "assets/images/yakitori.png",
      price: "25",
      rating: "4.0",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.menu),
          ),
        ],
        centerTitle: true,
        title: Text('Tokyo', style: GoogleFonts.poppins(fontSize: 24)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    
        children: [
          const SizedBox(height: 14),
          const PromoTile(),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(),
          ),
    
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => FoodTile(food: foodMenu[index]),
              itemCount: foodMenu.length,
            ),
          ),
    
          const SizedBox(height: 20),
    
          const PopularTile(),
        ],
      ),
    );
  }
}
