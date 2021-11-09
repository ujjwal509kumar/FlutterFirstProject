import 'package:first_app/home_page.dart';
import 'package:first_app/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(firstApp());
}

class firstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
       darkTheme: ThemeData(
        brightness: Brightness.dark,
        ),
        //initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => Homepage(),
          "/login": (context) => LoginPage()
        },
    );
  }
}