import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';
import 'package:restaurant_ease_groupe_bill/widgets/text_styles.dart';
import 'package:restaurant_ease_groupe_bill/variables.dart';
import 'package:restaurant_ease_groupe_bill/widgets/my_footer.dart';
import 'package:restaurant_ease_groupe_bill/widgets/nav_bar.dart';
import 'package:restaurant_ease_groupe_bill/widgets/buttons.dart';
import 'package:restaurant_ease_groupe_bill/widgets/admin_side_bar.dart';
import 'package:restaurant_ease_groupe_bill/widgets/admin_menu.dart';

double mul = 1;

class MenuView extends StatelessWidget {
const MenuView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(),
            SizedBox(height: 30 * mul),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SideBarAdmin(),
                MenuBuilder(test_menu),
              ],
            ),
          ],
        ),
      ),
    );
  }
}