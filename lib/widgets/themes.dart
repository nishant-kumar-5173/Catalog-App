import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: Colors.white,
    canvasColor: creamColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: darkBluishColor,
      foregroundColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      // ignore: deprecated_member_use
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.lato(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: Colors.black,
    canvasColor: darkCreamColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightBluishColor,
      foregroundColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      // ignore: deprecated_member_use
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: GoogleFonts.lato(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  // colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color.fromARGB(255, 65, 52, 127);
  static Color lightBluishColor = Vx.blue600;
}
