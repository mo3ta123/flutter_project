import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  static const small_font_size = 12.0;
  static const big_font_size = 25.0;

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/AI.png',
              height: 90,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Sign Up Now',
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: SingUpPage.big_font_size,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Please fill in the details and create account",
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: SingUpPage.small_font_size,
                color: Colors.blueGrey,
              )),
            ),
            const SizedBox(
              height: 35,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Fullname',
                border: InputBorder.none,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: InputBorder.none,
              ),
            ),
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Password',
                border: InputBorder.none,
                suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 5,
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
                "Sign up",
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
                    fontSize: SingUpPage.small_font_size,
                    color: Colors.blueGrey,
                  )),
                ),
                const TextButton(
                  onPressed: doNothing,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: SingUpPage.small_font_size,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Or Connect With",
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: SingUpPage.small_font_size,
                color: Colors.blueGrey,
              )),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/facebook.png',
                  height: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/twitter.png',
                  height: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/search.png',
                  height: 60,
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
