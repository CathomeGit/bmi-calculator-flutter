import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'bmi_card.dart';

const cardColour = Color(0xFF1D1E33);
const textColour = Color(0xFF8D8E98);
const bottomHeight = 80.0;
const bottomColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                BmiCard(
                  color: cardColour,
                  child: CardContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                    textColor: textColour,
                  ),
                ),
                BmiCard(
                  color: cardColour,
                  child: CardContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                    textColor: textColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                BmiCard(color: cardColour),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                BmiCard(color: cardColour),
                BmiCard(color: cardColour),
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
}
