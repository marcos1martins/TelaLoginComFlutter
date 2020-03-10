import 'package:flutter/material.dart';
import 'package:tela_login/src/login/pages/LoginPageWidget.dart';
import 'package:tela_login/src/login/pages/LoginSignInPageWidget.dart';
import 'package:tela_login/src/login/pages/LoginSignUpPageWidget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/img/monte.jpg", fit: BoxFit.cover,),
          PageView(
            children: <Widget>[
              LoginSignUpPageWidget(),
              LoginPageWidget(),
              LoginSignInPageWidget(),
              
              
            ],
          )
        ],
      ),
    );
  }
}