import 'package:flutter/material.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';

double mul = 0;

class NavBar extends StatelessWidget {
const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Container(
            padding: EdgeInsets.fromLTRB(0, 20 * mul, 0, 40 * mul),
            alignment: Alignment.center,
            child: Image.asset("logo.png",
              scale: 17 * (2 - mul),)
          );
  }
}