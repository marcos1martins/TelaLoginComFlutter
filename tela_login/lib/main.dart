import 'package:flutter/material.dart';
import 'package:tela_login/src/login/LoginWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFFFFF65E5C),
      ),
      home: LoginWidget(),
    );
  }
}

