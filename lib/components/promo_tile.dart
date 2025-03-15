import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_button.dart';
import '../constants.dart';

class PromoTile extends StatelessWidget {
  const PromoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
