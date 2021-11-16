import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/68781093?s=400&u=6506ca60e5e52c2a9248db66234b4b73b14e8f24&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.brown
                ),
                accountName: Text("Ujjwal Kumar"),
                accountEmail: Text("ujjwal509kumar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home, 
                  color: Colors.white,),
                  title: Text("Home",
                  textScaleFactor: 1.2, 
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled, 
                  color: Colors.white,),
                  title: Text("Profile",
                  textScaleFactor: 1.2, 
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.cart, 
                  color: Colors.white,),
                  title: Text("Cart",
                  textScaleFactor: 1.2, 
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                )
          ],
        ),
      ),
      
    );
  }
}