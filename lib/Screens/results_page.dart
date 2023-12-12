import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import 'input_page.dart';


class ResultsPage extends StatelessWidget {
  late final String result;
  late final String bmiResult;
  late final String interpretation;


  ResultsPage({required this.result, required this.bmiResult, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result', style: kTitleTextStyle),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: KActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(result.toUpperCase(),style: kResultTextStyle,),
                    Text(bmiResult,style: kBMITextStyle,),
                    Text(interpretation, style: KLabelTextStyle,textAlign: TextAlign.center,)

                  ],
                ),
              )),
          BottomButton(
            buttonTitle: 're-calculate',
            onTap: (){
              Navigator.pop(context);
            },
          ),
          // Expanded(child: child),
        ],
      ),
    );
  }
}


