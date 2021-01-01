import 'package:assform/Profile.dart';
import 'package:assform/RegisterScreen.dart';
import 'package:assform/login.dart';
import 'package:assform/splah.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
