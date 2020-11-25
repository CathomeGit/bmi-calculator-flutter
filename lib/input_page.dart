import 'package:bmi_calculator/gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'bmi_card.dart';

const cardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const textColour = Color(0xFF8D8E98);
const bottomHeight = 80.0;
const bottomColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Map<Gender, Color> genderCards = {
    Gender.male: inactiveCardColour,
    Gender.female: inactiveCardColour
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateGenderCard(Gender.male);
                    },
                    child: BmiCard(
                      color: genderCards[Gender.male],
                      child: CardContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        textColor: textColour,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateGenderCard(Gender.female);
                    },
                    child: BmiCard(
                      color: genderCards[Gender.female],
                      child: CardContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                        textColor: textColour,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: BmiCard(color: cardColour)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: BmiCard(color: cardColour)),
                Expanded(child: BmiCard(color: cardColour)),
              ],
            ),
          ),
          Container(
            color: bottomColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomHeight,
          )
        ],
      ),
    );
  }

  void updateGenderCard(Gender selectedGender) {
    setState(() {
      genderCards.forEach((key, value) {
        if (key == selectedGender) {
          Color currentColor = genderCards[key];
          genderCards[key] = currentColor == inactiveCardColour
              ? cardColour
              : inactiveCardColour;
        } else {
          genderCards[key] = inactiveCardColour;
        }
      });
    });
  }
}
