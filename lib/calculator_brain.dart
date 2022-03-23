import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal or Healthy Weight';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You are heavily overweight. Your health may be at risk if you do not lose weight. You are recommended to talk to your doctor or a dietitian for advice';
    } else if (_bmi >= 25) {
      return 'You are slightly overweight., You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor for dietitian for advice';
    } else if (_bmi >= 18.5) {
      return 'You are at a healthy weight for your height. by maintaining a healthy weight, you lower your risk of developing serous health problem';
    } else {
      return 'You are underweight. You may need to put on some weight. You are recommended to ask your doctor or a dietitian for advice';
    }
  }
}
