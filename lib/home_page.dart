import 'package:first_app/item_widget.dart';
import 'package:first_app/items.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Homepage extends StatelessWidget {
  String name = "Ujjwal";


  @override
  Widget build(BuildContext context) {
    final DummyList = List.generate(10,(index)=>ItemModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Global City Shop"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: DummyList.length,
            itemBuilder: (BuildContext context, int index) { 
              return ItemWidget(
                item: DummyList[index],
              );
             },
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}