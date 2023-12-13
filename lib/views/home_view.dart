import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';
import 'package:restaurant_ease_groupe_bill/widgets/text_title.dart';
import 'package:restaurant_ease_groupe_bill/variables.dart';

double mul = 0; 

class HomeView extends StatelessWidget {
const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10 * mul),
            alignment: Alignment.center,
            child: Image.asset("logo.png",
              scale: 17 * (2 - mul),)
          ),
          SizedBox(width: 0.0, height: 30 * mul),
          TextTitle("This is a Title"),
          //SizedBox(width: 0.0, height: 20),
          TextSubTitle("This is a Sub Title"),
          SizedBox(width: 0.0, height: 70 * mul),
          TextParagraph("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor velit odio, nec viverra velit vestibulum quis. Nam in sapien euismod, sodales nunc ac, semper tellus. Donec nisl massa, tincidunt vel turpis non, dapibus pulvinar nisl. Donec sit amet eros porta, imperdiet justo vel, rutrum lacus. Nulla tortor magna, imperdiet non luctus sit amet, semper et libero. Vestibulum eget lorem sed sem commodo porttitor eu eu lorem. Fusce consectetur ipsum id pretium tincidunt. Morbi elementum ultrices dolor at viverra. Vivamus nibh tellus, semper quis tempus ac, ullamcorper id mauris. "),
          SizedBox(width: 0.0, height: 40 * mul),
          FloatingActionButton.extended(
            onPressed: () {},
          
            label: Text(
              "For restaurants",
              style: TextStyle(
                color: backgroundColor,
                fontFamily: mainFont,
                fontSize: 20 * mul,
                letterSpacing: 2 * mul,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 117, 212),
            ),
            // Footer
            Spacer(),
            Container(
              padding: EdgeInsets.fromLTRB(0, 30 * mul, 0, 30 * mul),
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextParagraph("Fait avec ♥️ par Thibault Briens"),
                ],
              ),
            )
        ],
      ),
    );
  }
}

