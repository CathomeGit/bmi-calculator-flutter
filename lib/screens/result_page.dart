import 'package:flutter/material.dart';

import '../components/bmi_card.dart';
import '../components/bottom_button.dart';
import '../components/constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          BmiCard(
            flex: 5,
            color: kActiveCardColour,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('range', style: kResultTextStyle),
                Text('00.0', style: kBmiTextStyle),
                Text('conclusion',
                    textAlign: TextAlign.center, style: kBodyTextStyle)
              ],
            ),
          ),
          BottomButton(
              buttonLabel: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
