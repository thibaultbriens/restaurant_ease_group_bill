import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_ease_groupe_bill/widgets/text_styles/text_title.dart';

class HomeView extends StatelessWidget {
const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 245),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Image.asset("logo.png",
              scale: 20,)
          ),
          SizedBox(width: 0.0, height: 30),
          TextTitle("This is a Title"),
        ],
      ),
    );
  }
}

