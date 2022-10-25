import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "asset/image/loginpic.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
