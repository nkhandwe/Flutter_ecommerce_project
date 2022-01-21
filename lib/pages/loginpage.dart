import 'package:ecommerce_app_project/utils/routes.dart';
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
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Enter Username", labelText: "Username"),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Enter Password", labelText: "Password"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
          ],
        ));
  }
}
