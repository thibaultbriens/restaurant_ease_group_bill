import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle(this.text,);

  @override
  Widget build(BuildContext context) {
    return Text( 
      text,
      style: TextStyle(
        fontFamily: "DMSerifDisplay",
        fontWeight: FontWeight.bold,
        fontSize: 100,
        color: Colors.black,
        letterSpacing: 14,
        decoration: TextDecoration.none,
      ),
    );
  }
}