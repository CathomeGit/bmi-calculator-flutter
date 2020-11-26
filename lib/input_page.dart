import 'package:bmi_calculator/gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'bmi_card.dart';
import 'constants.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                      updateGenderCard(genderCards, Gender.male);
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
                      updateGenderCard(genderCards, Gender.female);
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
                          activeColor: kAccentColour,
                          inactiveColor: kTextColour,
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
                BmiCard(color: kActiveCardColour),
                BmiCard(color: kActiveCardColour),
              ],
            ),
          ),
          Container(
            color: kAccentColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomHeight,
          )
        ],
      ),
    );
  }
}

Function updateGenderCard =
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
