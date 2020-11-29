import 'dart:math';

import 'package:bmi_calculator/bmi_logic/result.dart';

class Calculator {
  int _height;
  double _weight;

  Calculator(this._height, this._weight);

  Result calculate() {
    double bmi = _weight / pow(_height / 100, 2);
    if (bmi >= 25) {
      return Result(bmi, 'Overweight',
          'You have higher than normal weight. Try to exercise more.');
    } else if (bmi >= 18.5) {
      return Result(bmi, 'Normal', 'You have normal body weight. Good job!');
    } else {
      return Result(bmi, 'Underweight',
          'You have lower than normal body weight. You can eat a bit more.');
    }
  }
}
