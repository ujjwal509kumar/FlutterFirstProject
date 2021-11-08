import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(firstApp());
}

class firstApp extends StatelessWidget {
  const firstApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage()
    );
  }
}