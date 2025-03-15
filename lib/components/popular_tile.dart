import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularTile extends StatelessWidget {
  const PopularTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Image.asset('assets/images/suhis_dish.png', height: 80),
    
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Special Dish",
                  style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                ),
                Text(
                  "\$20.00",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.favorite_border),
          ],
        ),
      ),
    );
  }
}

