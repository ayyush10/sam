import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sam/utlis/routes.dart';
import 'package:sam/widgets/themes.dart';
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
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
