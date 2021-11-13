import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  String name = "Ujjwal";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global City Shop"),
      ),
        body: Center(
          child: Container(
           child: Text("Hey guyz myself $name"),
         ),
        ),
        drawer: Drawer(),
      );
  }
}