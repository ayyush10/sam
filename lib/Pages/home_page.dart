import 'package:flutter/material.dart';
import 'package:sam/widgets/drawer.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contest"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the app"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
