import 'package:flutter/material.dart';
void main() {
  runApp(firstApp());
}

class firstApp extends StatelessWidget {
  const firstApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
           child: Text("Hey guyz"),
         ),
        ),
      ),
    );
  }
}