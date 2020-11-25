import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  BmiCard({@required this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: child,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
