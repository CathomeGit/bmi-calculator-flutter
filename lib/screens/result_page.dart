import 'package:flutter/material.dart';

import '../bmi_logic/result.dart';
import '../components/bmi_card.dart';
import '../components/bottom_button.dart';
import '../components/constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Result args = ModalRoute.of(context).settings.arguments;

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
                Text(args.result.toUpperCase(), style: kResultTextStyle),
                Text(args.bmi, style: kBmiTextStyle),
                Text(args.conclusion,
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
