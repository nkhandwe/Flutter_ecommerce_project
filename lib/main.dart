import 'package:ecommerce_app_project/pages/homepage.dart';
import 'package:ecommerce_app_project/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
      )
     routes: {
        "/" : (context) => HomePage(),
        "/home" : HomePage(),
        "/login" : LoginPage(),
       },
    );
  }
}
