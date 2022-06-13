import 'package:flutter/material.dart';


class AppTextField extends StatelessWidget {
  String labelText;
  String hintText;
  IconData icon;
  AppTextField(this.labelText, this.hintText, this.icon);

  @override
  //this page has the TextField design
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: Icon(icon, color: Colors.white,),
          hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          labelStyle: TextStyle(fontSize: 15, color: Colors.white),
        )
    );
  }
}
