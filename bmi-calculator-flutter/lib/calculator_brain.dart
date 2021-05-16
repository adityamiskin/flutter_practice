import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Exercise more';
    } else if (_bmi > 18.5) {
      return 'Good job';
    } else
      return 'Eat more';
  }
}
