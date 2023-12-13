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

class TextSubTitle extends StatelessWidget {
  final String text;

  const TextSubTitle(this.text,);

  @override
  Widget build(BuildContext context) {
    return Text( 
      text,
      style: TextStyle(
        fontFamily: "DMSerifDisplay",
        fontSize: 45,
        color: Colors.black,
        letterSpacing: 10,
        decoration: TextDecoration.none,
      ),
    );
  }
}

class TextParagraph extends StatelessWidget {
  final String text;

  const TextParagraph(this.text,);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Text( 
        text,
        style: TextStyle(
          fontFamily: "DMSerifDisplay",
          fontSize: 20,
          color: Colors.black,
          //letterSpacing: 14,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}