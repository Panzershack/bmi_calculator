import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              myColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      'Your BMI result is quite low, you should eat more!',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
