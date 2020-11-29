import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;
  final int flex;

  BmiCard({@required this.color, this.child, this.onTap, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
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
