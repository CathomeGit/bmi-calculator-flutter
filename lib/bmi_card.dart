import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color color;
  final Widget child;

  BmiCard({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
