import 'package:flutter/material.dart';
import 'package:flutter_awesome_calculator/flutter_awesome_calculator.dart';
import 'package:split_app/utils/StringValues.dart';

class Calculator extends StatelessWidget {
      static String routeNamed = StringValues.calculator;
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child:  Align(
            alignment: Alignment.bottomCenter,
            child: FlutterAwesomeCalculator(
              context: context,
              digitsButtonColor: Colors.white,
              backgroundColor: Colors.white,
              expressionAnswerColor: Colors.white,
              showAnswerField: true,
              fractionDigits: 2,
              buttonRadius: 30,
              onChanged: (ans, expression) {
                print(ans);
              },
            ),
          ),
        ),
      ),
    );
  }
}
