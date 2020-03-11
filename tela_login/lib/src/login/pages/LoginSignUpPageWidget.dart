import 'package:flutter/material.dart';
import 'package:tela_login/src/login/provider/ProviderPageController.dart';
import 'package:tela_login/src/login/widgets/CicleButton.dart';
import 'package:tela_login/src/login/widgets/CustonTextFild.dart';

class LoginSignUpPageWidget extends StatefulWidget {
  @override
  _LoginSignUpPageWidgetState createState() => _LoginSignUpPageWidgetState();
}

class _LoginSignUpPageWidgetState extends State<LoginSignUpPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
          ),
          CustonTextFild(
            hint: "marcosm.caixa@gmail.com",
            label: "EMAIL",
          ),
          Container(
            height: 25,
          ),
          CustonTextFild(
            hint: "**************",
            label: "PASSWORD",
          ),
          Container(
            height: 25,
          ),
          CustonTextFild(
            hint: "**************",
            label: "CONFIRM PASSWORD",
          ),
          Container(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              ProviderPageController.of(context).toPage(2);
            },
            child: Container(
              width: double.infinity,
              child: Text(
                "Already have a account?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Container(
            height: 40,
          ),
          CicleButton(
            label: "SIGN UP",
          ),
        ],
      ),
    );
  }
}
