import 'package:flutter/material.dart';

import 'sign_up_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  static const smallFontSize = 12.0;
  static const bigFontSize = 25.0;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _isObscure = false;
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
                Text(
                  'Log In Now',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Please log in to continue using our app",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 35,
                ),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 300,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SingUpPage()),
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: doNothing,
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
                    "Log In",
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
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SingUpPage()),
                        );
                      },
                      child: Text(
                        'sign up',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Or Connect With",
                  style: Theme.of(context).textTheme.headline2,
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
        ),
      ),
    );
  }
}

void doNothing() {}
