import 'package:exercise1/background.dart';
import 'package:exercise1/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class _Body extends State<Body> {
  bool rememberPassword = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberPassword = newValue!;

    if (rememberPassword) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(gradient: backgroundGradient),
        alignment: Alignment.center,
        child: Column(
          children: [
            const Background(),
            const SizedBox(height: 21),
            Text('SIGN IN',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    textStyle: const TextStyle(color: Colors.white))),
            SizedBox(height: size.height * 0.038),
            Container(
                margin: const EdgeInsets.only(
                    left: 42, top: 0, right: 42, bottom: 0),
                child: TextField(
                    maxLines: 1,
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white)),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Enter email',
                        hintStyle:
                        TextStyle(fontSize: 16, color: mandyPink)))),
            SizedBox(height: size.height * 0.043),
            Container(
                margin: const EdgeInsets.only(
                    left: 42, top: 0, right: 42, bottom: 0),
                child: TextField(
                    maxLines: 1,
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white)),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Password',
                        hintStyle:
                        TextStyle(fontSize: 16, color: mandyPink)))),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  margin: const EdgeInsets.only(
                      left: 0, top: 21, bottom: 0, right: 0),
                  width: 20,
                  height: 20,
                  color: orangeColor,
                  child: Checkbox(
                      side: const BorderSide(color: Colors.transparent),
                      tristate: false,
                      value: rememberPassword,
                      onChanged: _onRememberMeChanged,
                      fillColor: MaterialStateProperty.all(orangeColor),
                      checkColor: Colors.white)),
              Container(
                  margin: EdgeInsets.only(
                      left: 8, top: 24, bottom: 0, right: size.width * 0.12),
                  child: const Text('Remember Password',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)))
            ]),
            const SizedBox(height: 32),
            const Button(title: 'GET STARTED', isShortButton: true),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 0, top: 0, right: 12, bottom: 0),
                  height: 68,
                  width: 68,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset('assets/images/ic_fb.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 12, top: 0, right: 0, bottom: 0),
                  height: 68,
                  width: 68,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset('assets/images/ic_twitter.png'),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'FORGOT PASSWORD',
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline)),
            ),
            const SizedBox(height: 32),
            Container(
              width: double.infinity,
              height: size.height * 0.08,
              color: maroonFlushColor,
              child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "DON'T HAVE ACCOUNT ? ",
                          style: TextStyle(
                              color: orangeColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                      TextSpan(
                          text: 'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              decoration: TextDecoration.underline))
                    ]),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _Body createState() => _Body();
}
