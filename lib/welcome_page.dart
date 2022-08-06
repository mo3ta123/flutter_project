import 'package:flutter/material.dart';
import 'package:flutter_project_1/log_in_page.dart';
import 'sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const smallFontSize = 12.0;
  static const bigFontSize = 25.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
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
                Image.asset(
                  'assets/images/creativity.png',
                  height: 270,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Create an account and access thousand",
                    style: Theme.of(context).textTheme.headline2),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "of cool stuffs",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 28,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SingUpPage()),
                    );
                  },
                  style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(300, 55)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Getting Started",
                    style: Theme.of(context).textTheme.button,
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
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()),
                        );
                      },
                      child: Text(
                        'log in',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void doNothing() {}
