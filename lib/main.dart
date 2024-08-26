import 'package:flutter/material.dart';
import 'package:login_ui/pages/home.dart';
import 'package:login_ui/pages/login.dart';
import 'package:login_ui/pages/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginApp",
      initialRoute: "/",
      routes: {
        "/": (context)=>Home(),
        "/login":(context)=>Login(),
        "/sign_up":(context)=>SignUp(),
      },
    );
  }
}
