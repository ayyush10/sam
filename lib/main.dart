import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sam/utlis/routes.dart';
import 'package:sam/utlis/routes.dart';
import 'Pages/home_page.dart';
import 'Pages/login_page.dart';

void main() {
  runApp(Sam());
}

class Sam extends StatelessWidget {
  const Sam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
