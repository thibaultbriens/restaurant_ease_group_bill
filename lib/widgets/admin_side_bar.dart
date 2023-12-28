import 'package:flutter/material.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';

double mul = 1;

class SideBarAdmin extends StatelessWidget {
const SideBarAdmin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(50 * mul, 0, 50 * mul, 0),
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Your QR Code"),
          ),
          SizedBox(width: 0.0, height: 20 * mul),
          TextButton(
            onPressed: () {},
            child: Text("Your Menu"),
          ),
        ],
      ),
    );
  }
}