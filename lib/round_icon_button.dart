import 'package:flutter/material.dart';
import 'dart:async';

const kFillColor = Color(0xFF4C4F5E);
const kBoxConstraints = BoxConstraints.tightFor(width: 56.0, height: 56.0);

class RoundIconButton extends StatefulWidget {
  final IconData child;
  final Function onPressed;

  RoundIconButton({@required this.child, @required this.onPressed});

  @override
  _RoundIconButtonState createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
          widget.onPressed?.call();
        });
      },
      onLongPressUp: () {
        _timer.cancel();
      },
      child: RawMaterialButton(
        onPressed: widget.onPressed,
        child: Icon(widget.child),
        fillColor: kFillColor,
        elevation: 0.0,
        shape: CircleBorder(),
        constraints: kBoxConstraints,
      ),
    );
  }
}
