import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi/models/shop_model.dart';
import 'package:sushi/views/food_detail_view.dart';
import '../components/custom_text_field.dart';
import '../components/food_tile.dart';
import '../components/popular_tile.dart';
import '../components/promo_tile.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  void navigateToDetailView(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailView(food: foodMenu[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: Colors.grey[900],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/CartView');
              },
              icon: const Icon(Icons.shopping_basket_outlined),
            ),
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
                  (context, index) => FoodTile(
                    onTap: () {
                      navigateToDetailView(index);
                    },
                    food: foodMenu[index],
                  ),
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
