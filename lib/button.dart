import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'constant.dart';

class Button extends StatelessWidget {
  final String title;
  final String? image;
  final bool isShortButton;

  const Button({Key? key, required this.title, this.image, required this.isShortButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment alignment = MainAxisAlignment.start;
    EdgeInsets test = const EdgeInsets.only(left: 36, top: 0, bottom: 26, right: 36);
    if (isShortButton == true) test = const EdgeInsets.only(left: 58, top: 0, bottom: 26, right: 58);
    if (image == null) alignment = MainAxisAlignment.center;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      height: 66,
      margin: const EdgeInsets.only(left: 36, top: 0, bottom: 26, right: 36),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.grey,
          onTap: () {},
          child: Row(
            mainAxisAlignment: alignment,
            children: [
              if (image != null) const SizedBox(width: 21),
              if (image != null)
                SizedBox(width: 27, child: Image.asset(image!)),
              if (image != null)
                Container(
                  decoration: const BoxDecoration(gradient: backgroundGradient),
                  width: 2,
                  height: double.infinity,
                  margin: const EdgeInsets.only(
                      left: 8, top: 18, bottom: 18, right: 28),
                ),
              GradientText(
                colors: const [orangeColor, radicalRedColor],
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
