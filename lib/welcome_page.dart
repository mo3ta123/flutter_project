import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const small_font_size = 12.0;
  static const big_font_size = 25.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/icons/AI.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 6,
              child: Image.asset('assets/images/creativity.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Welcome',
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: big_font_size,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Create an account and access thousand",
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: small_font_size,
                color: Colors.blueGrey,
              )),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "of cool stuffs",
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: small_font_size,
                color: Colors.blueGrey,
              )),
            ),
            const SizedBox(
              height: 28,
            ),
            ElevatedButton(
              onPressed: doNothing,
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(300, 55)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
              child: Text(
                "Getting Started",
                style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.fjallaOne(
                      textStyle: const TextStyle(
                    fontSize: small_font_size,
                    color: Colors.blueGrey,
                  )),
                ),
                TextButton(
                  onPressed: doNothing,
                  child: Text(
                    'log in',
                    style: TextStyle(
                      fontSize: small_font_size,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

void doNothing() {}
