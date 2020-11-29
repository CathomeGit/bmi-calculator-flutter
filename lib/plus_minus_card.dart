import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bmi_card.dart';
import 'constants.dart';

class PlusMinusCard extends StatelessWidget {
  final Color color;
  final String label;
  final String value;
  final Function decrease;
  final Function increase;

  PlusMinusCard(
      {this.color,
      @required this.label,
      @required this.value,
      @required this.decrease,
      @required this.increase});

  @override
  Widget build(BuildContext context) {
    return BmiCard(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: kLabelTextStyle),
          Text(value, style: kIndicatorTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                child: FontAwesomeIcons.minus,
                onPressed: decrease,
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                child: FontAwesomeIcons.plus,
                onPressed: increase,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
