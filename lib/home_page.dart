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
          child: (ItemModel.items!=null && ItemModel.items.isNotEmpty)
          ? GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
             mainAxisSpacing: 16,
             crossAxisSpacing: 16,
          ), 
          itemBuilder: (context,index){
            final item = ItemModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: GridTile(
                header: Container(child: Text(item.name, style: TextStyle(color: Colors.white),
                ),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                ),
                child: Image.network(item.image,),
                footer: Container(child: Text(item.price.toString(), style: TextStyle(color: Colors.black),
                ),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                ),
                )
                );
          },
          itemCount: ItemModel.items.length,)
          : Center(child: CircularProgressIndicator(),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}