import 'package:flutter/material.dart';
import 'package:first_app/routes.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                height: 20.0,
              ),
      
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter the username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter the password",
                    labelText: "Passsword",
                  ),
                ),
                SizedBox(
                height: 40.0,
              ),
      
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              } , 
              child: Text("Login"),
              style: TextButton.styleFrom(
                minimumSize: Size(120, 40)),
              )
                ],),
              )
          ],
        ),
      )
    );
  }
}