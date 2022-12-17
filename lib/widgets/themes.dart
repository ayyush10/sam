import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
  static Color creamColor = Color(0xfff5f5f5f);
  static Color darkBluishColor = Color(0xff403b58);
}
//colors