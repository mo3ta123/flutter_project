import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  static const small_font_size = 12.0;
  static const big_font_size = 25.0;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
              'Log In Now',
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: LogInPage.big_font_size,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Please log in to continue using our app",
              style: GoogleFonts.fjallaOne(
                  textStyle: const TextStyle(
                fontSize: LogInPage.small_font_size,
                color: Colors.blueGrey,
              )),
            ),
            const SizedBox(
              height: 35,
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
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: doNothing,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: LogInPage.small_font_size,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
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
                "Log In",
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
                  "Don't have an account?",
                  style: GoogleFonts.fjallaOne(
                      textStyle: const TextStyle(
                    fontSize: LogInPage.small_font_size,
                    color: Colors.blueGrey,
                  )),
                ),
                const TextButton(
                  onPressed: doNothing,
                  child: Text(
                    'sign up',
                    style: TextStyle(
                      fontSize: LogInPage.small_font_size,
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
                fontSize: LogInPage.small_font_size,
                color: Colors.blueGrey,
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/facebook.png',
                  height: 60,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/icons/twitter.png',
                  height: 60,
                ),
                const SizedBox(
                  width: 5,
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
