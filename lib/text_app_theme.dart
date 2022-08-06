import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAppTheme {
  static const smallFontSize = 12.0;
  static const bigFontSize = 25.0;
  static TextTheme textTheme = TextTheme(
    headline2: GoogleFonts.fjallaOne(
      textStyle: const TextStyle(
        fontSize: smallFontSize,
        color: Colors.blueGrey,
      ),
    ),
    headline1: GoogleFonts.fjallaOne(
      textStyle: const TextStyle(
        fontSize: bigFontSize,
        color: Colors.black,
      ),
    ),
    bodyText2: const TextStyle(
      fontSize: smallFontSize,
      color: Colors.grey,
      decoration: TextDecoration.underline,
    ),
    bodyText1: const TextStyle(
      fontSize: smallFontSize,
      color: Colors.red,
      decoration: TextDecoration.underline,
    ),
    button: GoogleFonts.fjallaOne(
      textStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
