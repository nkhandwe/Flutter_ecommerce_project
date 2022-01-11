import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  String welcome = "Welcome To My App";
    return Scaffold(
      appBar: AppBar(
         title: Text("Flutter Ecommerce App"),
      ),
      body: Center(
        child: Container(
        child: Text("$welcome"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
