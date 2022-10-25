import 'package:flutter/material.dart';
import 'package:sam/home_page.dart';

void main() {
  runApp(Sam());
}

class Sam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),
    );
  }
}
