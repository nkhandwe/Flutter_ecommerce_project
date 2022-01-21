import 'package:ecommerce_app_project/pages/homepage.dart';
import 'package:ecommerce_app_project/pages/loginpage.dart';
import 'package:ecommerce_app_project/pages/splash.dart';
import 'package:ecommerce_app_project/utils/routes.dart';
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
      ),
      initialRoute: "/",
      routes: {
         "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.splashRoute: (context) => SplashScreen()
       },
    );
  }
}
