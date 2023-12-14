import 'package:flutter/material.dart';
import 'package:restaurant_ease_groupe_bill/variables.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';

double mul = 0;

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle(this.text,);

  @override
  Widget build(BuildContext context) {
    mul = get_multiplier(context);
    return Text( 
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: mainFont,
        fontWeight: FontWeight.bold,
        fontSize: 95 * mul,
        color: Colors.black,
        letterSpacing: 14 * mul,
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
    mul = get_multiplier(context);
    return Text( 
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: mainFont,
        fontSize: 45 * mul,
        color: Colors.black,
        letterSpacing: 10 * mul,
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
    mul = get_multiplier(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Text( 
        text,
        textAlign: TextAlign.center, 
        style: TextStyle(
          fontFamily: mainFont,
          fontSize: 20 * mul,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}