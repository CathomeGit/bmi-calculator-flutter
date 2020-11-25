import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final Color textColor;
  final IconData icon;
  final String text;

  CardContent({this.icon, this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: textColor),
        )
      ],
    );
  }
}
