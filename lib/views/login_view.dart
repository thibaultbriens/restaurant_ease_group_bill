import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:restaurant_ease_groupe_bill/functions.dart';
import 'package:restaurant_ease_groupe_bill/widgets/text_styles.dart';
import 'package:restaurant_ease_groupe_bill/variables.dart';
import 'package:restaurant_ease_groupe_bill/widgets/my_footer.dart';
import 'package:restaurant_ease_groupe_bill/widgets/nav_bar.dart';
import 'package:restaurant_ease_groupe_bill/widgets/buttons.dart';

double mul = 0;

class LoginView extends StatelessWidget {
const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => LoginViewMobile(),
      tablet: (BuildContext context) => LoginViewTablet(),
    );
  }
}

class LoginViewTablet extends StatelessWidget {
  LoginViewTablet({ Key? key }) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          NavBar(),
          SizedBox(height: 30 * mul),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextSubTitle("Se connecter"),
                    SizedBox(height: 30 * mul),
                    //Inputs
                    Padding(
                      padding: EdgeInsets.fromLTRB(50 * mul, 0, 50 * mul, 0),
                      child: TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Entrer votre nom d'utilisateur",
                          hintStyle: TextStyle(
                            fontSize: 16 * mul,
                          ),
                          suffixIcon: IconButton(
                            iconSize: 24 * mul,
                            onPressed: () {
                              _usernameController.clear();
                            },
                            icon: const Icon(Icons.clear),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * mul),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50 * mul, 0, 50 * mul, 0),
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Entrez votre mot de passe", 
                          hintStyle: TextStyle(
                            fontSize: 16 * mul,
                          ),
                          suffixIcon: IconButton(
                            iconSize: 24 * mul,
                            onPressed: () {
                              _passwordController.clear();
                            },
                            icon: const Icon(Icons.clear),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * mul),
                    Button1(
                      Text(
                        "Se connecter",
                        style: TextStyle(
                          fontSize: 20 * mul,
                          color: backgroundColor,
                        ),
                      ),
                      () {},
                      icon: Icon(Icons.arrow_right_alt_sharp, color: backgroundColor, size: 25,),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextParagraph("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor velit odio, nec viverra velit vestibulum quis. Nam in sapien euismod, sodales nunc ac, semper tellus. Donec nisl massa, tincidunt vel turpis non, dapibus pulvinar nisl. Donec sit amet eros porta, imperdiet justo vel, rutrum lacus. Nulla tortor magna, imperdiet non luctus sit amet, semper et libero. Vestibulum eget lorem sed sem commodo porttitor eu eu lorem. Fusce consectetur ipsum id pretium tincidunt. Morbi elementum ultrices dolor at viverra. Vivamus nibh tellus, semper quis tempus ac, ullamcorper id mauris. "),
                    SizedBox(height: 30 * mul),
                    Button1(
                      Text("Contactez moi",
                      style: TextStyle(color: backgroundColor, fontSize: 20 * mul),
                      ),
                      () {},
                      icon: Icon(Icons.mail, color: backgroundColor, size: 25 * mul,),
                      ),
                      SizedBox(height: 30 * mul),
                      TextParagraph("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor velit odio, nec viverra velit vestibulum quis. Nam in sapien euismod, sodales nunc ac, semper tellus. Donec nisl massa, tincidunt vel turpis non, dapibus pulvinar nisl. Donec sit amet eros porta, imperdiet justo vel, rutrum lacus. Nulla tortor magna, imperdiet non luctus sit amet, semper et libero. Vestibulum eget lorem sed sem commodo porttitor eu eu lorem. Fusce consectetur ipsum id pretium tincidunt. Morbi elementum ultrices dolor at viverra. Vivamus nibh tellus, semper quis tempus ac, ullamcorper id mauris. "),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          MyFooter(),
        ],
      ),
    );
  }
}

class LoginViewMobile extends StatelessWidget {
  LoginViewMobile({ Key? key }) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    mul = get_multiplier(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          NavBar(),
          SizedBox(height: 30 * mul),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextSubTitle("Se connecter"),
                SizedBox(height: 30 * mul),
                //Inputs
                Padding(
                  padding: EdgeInsets.fromLTRB(50 * mul, 0, 50 * mul, 0),
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Entrer votre nom d'utilisateur",
                      hintStyle: TextStyle(
                        fontSize: 16 * mul,
                      ),
                      suffixIcon: IconButton(
                        iconSize: 24 * mul,
                        onPressed: () {
                          _usernameController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30 * mul),
                Padding(
                  padding: EdgeInsets.fromLTRB(50 * mul, 0, 50 * mul, 0),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Entrez votre mot de passe", 
                      hintStyle: TextStyle(
                        fontSize: 16 * mul,
                      ),
                      suffixIcon: IconButton(
                        iconSize: 24 * mul,
                        onPressed: () {
                          _passwordController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30 * mul),
                Button1(
                  Text(
                    "Se connecter",
                    style: TextStyle(
                      fontSize: 20 * mul,
                      color: backgroundColor,
                    ),
                  ),
                  () {},
                  icon: Icon(Icons.arrow_right_alt_sharp, color: backgroundColor, size: 25,),
                ),
              ],
            ),
          ),
          SizedBox(width: 0.0, height: 30 * mul),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextParagraph("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor velit odio, nec viverra velit vestibulum quis. Nam in sapien euismod, sodales nunc ac, semper tellus. Donec nisl massa, tincidunt vel turpis non, dapibus pulvinar nisl. Donec sit amet eros porta, imperdiet justo vel, rutrum lacus. Nulla tortor magna, imperdiet non luctus sit amet, semper et libero. Vestibulum eget lorem sed sem commodo porttitor eu eu lorem. Fusce consectetur ipsum id pretium tincidunt. Morbi elementum ultrices dolor at viverra. Vivamus nibh tellus, semper quis tempus ac, ullamcorper id mauris. "),
                SizedBox(height: 30 * mul),
                Button1(
                  Text("Contactez moi",
                  style: TextStyle(color: backgroundColor, fontSize: 20 * mul),
                  ),
                  () {},
                  icon: Icon(Icons.mail, color: backgroundColor, size: 25 * mul,),
                  ),
                  SizedBox(height: 30 * mul),
                  TextParagraph("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor velit odio, nec viverra velit vestibulum quis. Nam in sapien euismod, sodales nunc ac, semper tellus. Donec nisl massa, tincidunt vel turpis non, dapibus pulvinar nisl. Donec sit amet eros porta, imperdiet justo vel, rutrum lacus. Nulla tortor magna, imperdiet non luctus sit amet, semper et libero."),
              ],
            ),
          ),
          Spacer(),
          MyFooter(),
        ],
      ),
    );
  }
}