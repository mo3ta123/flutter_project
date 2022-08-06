import 'package:flutter/material.dart';
import 'log_in_page.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
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
                  'Sign Up Now',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Please fill in the details and create account",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 35,
                ),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Fullname',
                      border: InputBorder.none,
                    ),
                  ),
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
                    "Sign up",
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()),
                        );
                      },
                      child: Text(
                        'Log in',
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
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: Image.asset(
                        'assets/icons/facebook.png',
                        height: 60,
                      ),
                      iconSize: 60,
                      onPressed: doNothing,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: Image.asset(
                        'assets/icons/twitter.png',
                        height: 60,
                      ),
                      iconSize: 60,
                      onPressed: doNothing,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: Image.asset(
                        'assets/icons/search.png',
                        height: 60,
                      ),
                      iconSize: 60,
                      onPressed: doNothing,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void doNothing() {}
