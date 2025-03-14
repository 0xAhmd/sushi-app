import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/custom_button.dart';
import 'package:sushi/constants.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              decoration: BoxDecoration(
                color: primaryRed,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        "Get 30% Promo",
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      CustomButton(text: "Redeem", onTap: () {}),
                    ],
                  ),

                  Image.asset('assets/images/sushiz.png', height: 100),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  label: const Text(
                    "Search Here",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
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
          
          
          
          ],
        ),
      ),
    );
  }
}
