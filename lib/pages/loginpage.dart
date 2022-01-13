import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "asset/images/loginpage.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
           const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),),
            TextFormField(decoration: const InputDecoration(hintText: "Enter Username", labelText: "Username"),),
            TextFormField(decoration: const InputDecoration(hintText: "Enter Password", labelText: "Password"),),
          ],
        ));
  }
}
