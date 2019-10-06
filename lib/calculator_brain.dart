import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;
  String calculateBmi() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18)
      return 'Fit';
    else
      return 'UnderWeight';
  }

  String getBmiInterp() {
    if (_bmi >= 25)
      return 'Your weight is higher than noraml, you should Exercise more.';
    else if (_bmi > 18)
      return 'You weight is perfect, Good Job!!';
    else
      return 'You weight is less than normal, you should eat a bit more.';
  }
}
