import 'package:ecommerce_app_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
                hintText: "Enter username",
                labelText: "Username",
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Enter Password", labelText: "Password"),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                child: changeButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            ),
            // ElevatedButton(
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
