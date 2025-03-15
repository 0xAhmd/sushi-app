import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: secondaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(width: 20),
              const Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
