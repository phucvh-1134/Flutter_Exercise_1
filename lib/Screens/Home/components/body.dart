import 'package:exercise1/Screens/SignIn/sign_in_page.dart';
import 'package:exercise1/background.dart';
import 'package:exercise1/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(gradient: backgroundGradient),
      alignment: Alignment.center,
      child: Column(
        children: [
          const Background(),
          SizedBox(height: size.height * 0.08),
          const Button(
              title: 'Sign in with Facebook',
              image: 'assets/images/ic_fb.png',
              isShortButton: false),
          const Button(
              title: 'Sign in with Twitter',
              image: 'assets/images/ic_twitter.png',
              isShortButton: false),
          const Button(title: 'Sign Up', isShortButton: false),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignInPage();
                }));
              },
              child: Text('ALREADY REGISTERED SIGN IN',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          decoration: TextDecoration.underline))))
        ],
      ),
    );
  }
}
