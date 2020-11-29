import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bmi_logic/calculator.dart';
import '../components/bmi_card.dart';
import '../components/bottom_button.dart';
import '../components/card_content.dart';
import '../components/constants.dart';
import '../components/gender_enum.dart';
import '../components/plus_minus_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Map<Gender, Color> genderCards = {
    Gender.male: kInactiveCardColour,
    Gender.female: kInactiveCardColour
  };
  int height = 180;
  double weight = 60.0;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                BmiCard(
                  color: genderCards[Gender.male],
                  child: CardContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                  onTap: () {
                    setState(() {
                      _updateGenderCard(genderCards, Gender.male);
                    });
                  },
                ),
                BmiCard(
                  color: genderCards[Gender.female],
                  child: CardContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                  onTap: () {
                    setState(() {
                      _updateGenderCard(genderCards, Gender.female);
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                BmiCard(
                  color: kActiveCardColour,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: kIndicatorTextStyle),
                            Text('cm', style: kLabelTextStyle),
                          ]),
                      Slider(
                          value: height.toDouble(),
                          min: 100,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                PlusMinusCard(
                  color: kActiveCardColour,
                  label: 'WEIGHT',
                  value: weight.toStringAsFixed(1),
                  // TODO implement onHold
                  increase: () {
                    setState(() {
                      weight += 0.1;
                    });
                  },
                  decrease: weight < 0.1
                      ? null
                      : () {
                          setState(() {
                            weight -= 0.1;
                          });
                        },
                ),
                PlusMinusCard(
                  color: kActiveCardColour,
                  label: 'AGE',
                  value: age.toString(),
                  increase: () {
                    setState(() {
                      age++;
                    });
                  },
                  decrease: age == 0
                      ? null
                      : () {
                          setState(() {
                            age--;
                          });
                        },
                ),
              ],
            ),
          ),
          BottomButton(
              buttonLabel: 'CALCULATE',
              onTap: () {
                Navigator.pushNamed(context, '/result',
                    arguments: Calculator(height, weight).calculate());
              })
        ],
      ),
    );
  }
}

Function _updateGenderCard =
    (Map<Gender, Color> genderCards, Gender selectedGender) {
  genderCards.forEach((key, value) {
    if (key == selectedGender) {
      Color currentColor = genderCards[key];
      genderCards[key] = currentColor == kInactiveCardColour
          ? kActiveCardColour
          : kInactiveCardColour;
    } else {
      genderCards[key] = kInactiveCardColour;
    }
  });
};
