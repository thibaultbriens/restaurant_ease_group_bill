import 'package:flutter/material.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';
import 'package:restaurant_ease_groupe_bill/variables.dart';

double mul = 0;

class MyFooter extends StatelessWidget {
const MyFooter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Container(
              padding: EdgeInsets.fromLTRB(0, 50 * mul, 0, 30 * mul),
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Copy of TextParagraph
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Row(
                      children: [
                        Text( 
                          "Fait avec ",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            fontFamily: mainFont,
                            fontSize: 20 * mul,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text( 
                          "♥️",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            fontFamily: mainFont,
                            fontSize: 20 * mul,
                            color: Colors.red,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text( 
                          " par Thibault Briens",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            fontFamily: mainFont,
                            fontSize: 20 * mul,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}