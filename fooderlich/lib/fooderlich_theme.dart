import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.openSans(
      fontWeight: FontWeight.bold,
      fontSize: 32.0,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 21.0,
      color: Colors.black,
    ),
    headline3: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      color: Colors.black,
    ),
    headline6: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: Colors.black,
    ),
  );

  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline1: GoogleFonts.openSans(
      fontWeight: FontWeight.bold,
      fontSize: 32.0,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 21.0,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      color: Colors.white,
    ),
    headline6: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: Colors.white,
    ),
  );

  // 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) => Colors.black,
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  //4
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) => Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
