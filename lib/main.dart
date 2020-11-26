import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColour,
        scaffoldBackgroundColor: kScaffoldColour,
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: kTextColour,
          thumbColor: kAccentColour,
          overlayColor: kAccentColour.withAlpha(0x1f),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
        ),
      ),
      home: InputPage(),
    );
  }
}
