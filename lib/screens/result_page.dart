import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/reuse_card.dart';
import 'package:flutter/material.dart';
import '../components/reuse_card.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  final String getResult;
  final String calculateBMI;
  final String getInterpretation;

  ResultsPage(
      {required this.calculateBMI,
      required this.getResult,
      required this.getInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseCard(
              onPress: () {},
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculateBMI,
                    style: kBMITextStyle,
                  ),
                  Text(getInterpretation,
                      textAlign: TextAlign.center, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          ButtomButton(
              onTap: () {
                Navigator.pop(context);
              },
              bottomButtonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
