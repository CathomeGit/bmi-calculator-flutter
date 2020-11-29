import 'package:flutter/material.dart';

import 'components/constants.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

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
          trackHeight: 1.0,
          inactiveTrackColor: kTextColour,
          thumbColor: kAccentColour,
          overlayColor: kAccentColour.withAlpha(0x1f),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
        ),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage()
      },
      initialRoute: '/',
    );
  }
}
