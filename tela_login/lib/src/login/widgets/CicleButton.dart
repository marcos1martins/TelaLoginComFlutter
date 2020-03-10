import 'package:flutter/material.dart';

class CicleButton extends StatelessWidget {
  final String label;
  final Color backGroundColor;
  final Color textColor;
  final Color bordeColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  const CicleButton(
      {Key key,
      this.label = "",
      this.backGroundColor,
      this.textColor = Colors.white,
      this.bordeColor,
      this.height = 55,
      this.width,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        color: backGroundColor == null
            ? Theme.of(context).accentColor
            : backGroundColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border:
                    bordeColor == null ? null : Border.all(color: bordeColor),
              ),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon == null ? Container() : icon,
                  Container(
                    width: 7,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
