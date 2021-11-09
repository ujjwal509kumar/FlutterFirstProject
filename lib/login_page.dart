import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
              fontSize: 24,
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
              height: 20.0,
            ),

            ElevatedButton(onPressed: (){
              print("Testing sucessful");
            } , 
            child: Text("Login"),
            style: TextButton.styleFrom(),
            )
              ],),
            )
        ],
      )
    );
  }
}