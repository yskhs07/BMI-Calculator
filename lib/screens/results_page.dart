import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.interpretation, this.resultTitle});
  final String bmiResult;
  final String resultTitle;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Text(
            'Your Results',
            style: kResultTextStyle,
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultTitle.toUpperCase(),
                      style: kBmiTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kResultNumStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kResultDescStyle,
                    )
                  ],
                ),
              )),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            label: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
