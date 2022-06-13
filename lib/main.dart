
import 'package:flutter/material.dart';
import 'package:login_signup_page/login_page.dart';
import 'package:login_signup_page/signup_page.dart';
import 'package:login_signup_page/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login_signup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      initialRoute: StartPage.routeName,
      routes: {
        StartPage.routeName : (context) => const StartPage(),
        LogInPage.routeName : (context) => const LogInPage(),
        SignUpPage.routeName : (context) => const SignUpPage()
      },
    );
  }
}