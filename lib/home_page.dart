import 'package:first_app/item_widget.dart';
import 'package:first_app/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'drawer.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String name = "Ujjwal";

  @override
  void initState() {
    loadData();
     
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final dcodedData = jsonDecode(catalogJson);
    var productsdata = dcodedData["products"];
     ItemModel.items= List.from(productsdata).map<Item>((item) => Item.fromMap(item)).toList();
     setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global City Shop"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (ItemModel.items!=null && ItemModel.items.isNotEmpty)? ListView.builder(
            itemCount: ItemModel.items.length,
            itemBuilder: (BuildContext context, int index) { 
              return ItemWidget(
                item: ItemModel.items[index],
              );
             },
          ):Center(child: CircularProgressIndicator(),),
        ),
        drawer: MyDrawer(),
      );
  }
}