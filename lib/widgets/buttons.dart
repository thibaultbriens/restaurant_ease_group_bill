import 'package:flutter/material.dart';
import 'package:restaurant_ease_groupe_bill/variables.dart';

class Button1 extends StatelessWidget {
  Text text = Text("");
  var onPressed;
  var icon;

  Button1(this.text, this.onPressed, {this.icon}) ;

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.cyan]
        )
      ),
      child: (icon == null) ? ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: text,
      ) 
      : ElevatedButton.icon(
        icon: icon,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        label: text,
      ) 
    );
  }
}