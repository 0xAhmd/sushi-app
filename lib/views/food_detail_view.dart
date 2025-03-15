import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi/components/custom_button.dart';
import 'package:sushi/constants.dart';
import 'package:sushi/models/food_model.dart';
import 'package:sushi/models/shop_model.dart';

class FoodDetailView extends StatefulWidget {
  final Food food;
  const FoodDetailView({super.key, required this.food});

  @override
  State<FoodDetailView> createState() => _FoodDetailViewState();
}

class _FoodDetailViewState extends State<FoodDetailView> {
  int quantity = 0;
  void increament() {
    setState(() {
      quantity++;
    });
  }

  void decreament() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  void addToCard() {
    if (quantity > 0) {
      final shop = context.read<Shop>();
      shop.addToCart(widget.food, quantity);
      showDialog(
        barrierDismissible: false,
        context: context,
        builder:
            (context) => AlertDialog(
              backgroundColor: primaryRed,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              content: const Text(
                style: TextStyle(fontSize: 20, color: Colors.white),
                "Added to Cart Successfully",
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.done, color: Colors.white),
                ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  Image.asset(widget.food.imagePath, height: 220),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 28),
                      const SizedBox(width: 8),
                      Text(
                        widget.food.rating,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 30),
                  ),

                  Text(
                    "Description",
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  Text(
                    widget.food.description,
                    style: GoogleFonts.poppins(height: 1.8, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: primaryRed,

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ ${widget.food.price}",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.remove, color: Colors.white),
                            onPressed: () {
                              decreament();
                            },
                          ),
                        ),
                        const SizedBox(width: 24),

                        SizedBox(
                          width: 35,
                          child: Text(
                            quantity.toString(),
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add, color: Colors.white),
                            onPressed: () {
                              increament();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                CustomButton(
                  text: "Add to cart",
                  onTap: () {
                    addToCard();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
