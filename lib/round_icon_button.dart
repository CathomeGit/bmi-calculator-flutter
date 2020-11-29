import 'package:flutter/material.dart';

const kFillColor = Color(0xFF4C4F5E);
const kBoxConstraints = BoxConstraints.tightFor(width: 56.0, height: 56.0);

class RoundIconButton extends StatelessWidget {
  final IconData child;
  final Function onPressed;

  RoundIconButton({@required this.child, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(child),
      fillColor: kFillColor,
      elevation: 0.0,
      shape: CircleBorder(),
      constraints: kBoxConstraints,
    );
  }
}
