import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.088),
        Image.asset('assets/images/ic_connexion.png'),
        const SizedBox(height: 24),
        Text('Find and Meet people around\nyou to find LOVE',
            textAlign: TextAlign.center,
            style: (GoogleFonts.roboto(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400))))
      ],
    );
  }
}
