import 'package:flutter/material.dart';


class AppRaisedButton extends StatelessWidget {
  String buttonText;
  Function() navPage;
  AppRaisedButton(this.buttonText, this.navPage);

  @override
  //this page has the RaisedButton design
  Widget build(BuildContext context) {
    return RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
        color: Theme.of(context).primaryColor,
        child: Text(buttonText, style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold)),
        onPressed: navPage
    );
  }
}
