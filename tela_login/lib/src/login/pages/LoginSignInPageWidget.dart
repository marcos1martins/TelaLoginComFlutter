import 'package:flutter/material.dart';
import 'package:tela_login/src/login/widgets/CicleButton.dart';
import 'package:tela_login/src/login/widgets/CustonTextFild.dart';

class LoginSignInPageWidget extends StatefulWidget {
  @override
  _LoginSignInPageWidgetState createState() => _LoginSignInPageWidgetState();
}

class _LoginSignInPageWidgetState extends State<LoginSignInPageWidget> {
  Widget _textForgot() {
    return Container(
      width: double.infinity,
      child: Text("Forgot password?",
          textAlign: TextAlign.right,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor)),
    );
  }

  Widget _lineTextLine() {
    return Row(
      children: <Widget>[
        Expanded(
            child: Divider(
          color: Colors.black,
          height: 15,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR CONNECT WITH",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Divider(
          color: Colors.black,
          height: 15,
        )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 80,
          ),
          Icon(Icons.headset_mic,
              size: 50, color: Theme.of(context).accentColor),
          Spacer(),
          CustonTextFild(hint: "marcosm.caixa@gmail.com", label: "EMAIL"),
          Container(height: 25),
          CustonTextFild(hint: "**************", label: "PASSWORD"),
          Container(height: 25),
          _textForgot(),
          CicleButton(
            label: "SIGN UP",
          ),
          Container(height: 25),
          _lineTextLine(),
          Container(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CicleButton(
                backGroundColor: Colors.blue[800],
                icon: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
                width: 150,
                label: "FACEBOOK",
              ),
              CicleButton(
                backGroundColor: Colors.red[700],
                icon: Icon(
                  Icons.g_translate,
                  color: Colors.white,
                ),
                width: 150,
                label: "GOOGLE",
              ),
            ],
          ),
          Container(height: 50),
        ],
      ),
    );
  }
}
