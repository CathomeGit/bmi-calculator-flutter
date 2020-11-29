import 'package:flutter/widgets.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonLabel;
  final Function onTap;

  BottomButton({@required this.buttonLabel, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kAccentColour,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomHeight,
        child: Center(
          child: Text(
            buttonLabel,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}