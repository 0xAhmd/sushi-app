import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi/components/custom_button.dart';
import 'package:sushi/constants.dart';
import 'package:sushi/models/food_model.dart';
import 'package:sushi/models/shop_model.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removefromCard(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder:
          (context, shop, child) => Scaffold(
            backgroundColor: primaryRed,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'My Cart',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
              elevation: 0,
              backgroundColor: primaryRed,
            ),
            body: Column(
              children: [
                Expanded(
                  child:
                      shop.cart.isEmpty
                          ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/empty-cart.png',
                                  height: 280,
                                ),
                                Text(
                                  'Looks like Your cart is empty ):',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          )
                          : ListView.builder(
                            itemCount: shop.cart.length,
                            itemBuilder: (context, index) {
                              final Food food = shop.cart[index];
                              final String foodName = food.name;
                              final String foodPrice = food.price;
                              return Container(
                                margin: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                  right: 20,
                                ),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: secondaryColor,
                                ),
                                child: ListTile(
                                  title: Text(
                                    foodName,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    '\$ $foodPrice',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      removeFromCart(food, context);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomButton(text: 'Checkout', onTap: () {}),
                ),
              ],
            ),
          ),
    );
  }
}
