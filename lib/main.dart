import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(Sam());
}

class Sam extends StatelessWidget {
  const Sam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/":(context) => homepage()),
        "/login": (context)=>LoginPage()
      },
    
    );
  }
}
