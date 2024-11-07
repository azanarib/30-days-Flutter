import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.amethysta().fontFamily,
        textTheme: TextTheme(displayLarge: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
            fontFamily: GoogleFonts.gideonRoman().fontFamily,
          ),
        ),
      );
  static ThemeData darkThemeData(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.notoKufiArabic().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      );
}
