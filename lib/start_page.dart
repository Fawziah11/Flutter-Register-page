
import 'package:flutter/material.dart';
import 'package:login_signup_page/login_page.dart';
import 'package:login_signup_page/signup_page.dart';
import 'package:login_signup_page/widget/background.dart';
import 'package:login_signup_page/widget/AppRaisedButton.dart';


class StartPage extends StatefulWidget {
  static const routeName = "startPage";
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(startPageDesign(context))
    );
  }

  Column startPageDesign(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome", style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,),
              const SizedBox(height: 50,),
              AppRaisedButton("Sign In",(){Navigator.of(context).pushNamed(LogInPage.routeName);}),
              const SizedBox(height: 20),
              AppRaisedButton("Sign up", (){Navigator.of(context).pushNamed(SignUpPage.routeName);})
              ]
        );
  }
}
