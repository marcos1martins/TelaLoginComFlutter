import 'package:flutter/material.dart';
import 'package:tela_login/src/login/pages/LoginPageWidget.dart';
import 'package:tela_login/src/login/pages/LoginSignInPageWidget.dart';
import 'package:tela_login/src/login/pages/LoginSignUpPageWidget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/img/monte.jpg", fit: BoxFit.cover,),
          PageView(
            controller: _controller,
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