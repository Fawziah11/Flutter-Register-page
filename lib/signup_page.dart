import 'package:flutter/material.dart';
import 'package:login_signup_page/widget/AppTextField.dart';
import 'package:login_signup_page/widget/background.dart';
import 'package:login_signup_page/widget/AppRaisedButton.dart';


class SignUpPage extends StatelessWidget {
  static const routeName = "SignUpPage";
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(signUpInPageDesign(context))
    );
  }

  Container signUpInPageDesign(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sign Up", style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w100)),
          const SizedBox(height: 45),
          AppTextField( "Email", "Enter your email", Icons.people),
          const SizedBox(height: 20),
          AppTextField("password", "Enter your password", Icons.lock),
          const SizedBox(height: 20),
          AppTextField("repeat password", "Enter repeat password", Icons.lock),
          const SizedBox(height: 20),
          AppTextField("phoneNumber", "Enter your phoneNumber", Icons.phone),
          const SizedBox(height: 40),
          AppRaisedButton("Sign up", (){}),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("you have account ?",style: TextStyle(fontSize: 15, color: Colors.white)),
              TextButton(
                  onPressed: (){},
                  child: const Text("Sign In",style: TextStyle(fontSize: 18, color: Colors.white))
              ),
            ],
          ),
        ],
      ),
    );
  }
}
