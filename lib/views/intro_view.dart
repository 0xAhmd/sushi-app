import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_button.dart';
import '../constants.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryRed,
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            // const SizedBox(height: 40),
            Center(
              child: Stack(
                children: [
                  const Positioned(
                    right: 10,
                    top: 20,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        '   日       本      食',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Image.asset('assets/images/intro.png', height: 370),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Text(
                "THE TASTE OF THE JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 44,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Text(
                "Feel the taste of the most popular japanese food from anyware and anytime",
                style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: CustomButton(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, '/MenuView');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
