import 'package:flutter/material.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';
import 'package:restaurant_ease_groupe_bill/widgets/text_styles.dart';

double mul = 1;

List<Widget> buildMenu(Map menu){
  List<Widget> result = [];

  for(String key in menu.keys){
    result.add(TextTitle(key));
    result.add(SizedBox(height: 10 * mul));
    for(String k in menu[key].keys){
      result.add(
        Card(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 5 * mul, 0, 5 * mul),
            child: Container(
              width: 200 * mul,
              height: 40 * mul,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    k,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "${menu[key][k]}€",
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
          ),
        )
      );
    }
  }

  return result;
}

class MenuBuilder extends StatelessWidget {
  final Map menu;
const MenuBuilder(this.menu);

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Column(
      //shrinkWrap: true,
      children: buildMenu(menu),
    );
  }
}