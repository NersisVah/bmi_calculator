import 'dart:ffi';

import 'package:bmi_calculator_flutter/Screens/results_page.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:bmi_calculator_flutter/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../constants.dart';

enum Gender {
  MALE,
  FEMALE;

  String toString() {
    if (this == Gender.MALE)
      return 'MALE';
    else
      return 'FEMALE';
  }
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  IconContent maleIconContent = IconContent(FontAwesomeIcons.mars, Gender.MALE);
  IconContent femaleIconContent =
      IconContent(FontAwesomeIcons.venus, Gender.FEMALE);
  late int height = 180;
  int weight = 60;
  int age = 18;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.MALE) {
  //     if (colorMale == inactiveCardColor) {
  //       colorMale = activeCardColor;
  //       colorFemale = inactiveCardColor;
  //     } else {
  //       colorMale = inactiveCardColor;
  //     }
  //   } else if (gender == Gender.FEMALE) {
  //     if (colorFemale == inactiveCardColor) {
  //       colorFemale = activeCardColor;
  //       colorMale = inactiveCardColor;
  //     } else {
  //       colorFemale = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: maleIconContent,
                    colour: selectedGender == Gender.MALE
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.FEMALE;
                        });
                      },
                      child: new ReusableCard(
                        cardChild: femaleIconContent,
                        colour: selectedGender == Gender.FEMALE
                            ? KActiveCardColor
                            : KInactiveCardColor,
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.FEMALE;
                          });
                        },
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: ReusableCard(
                colour: KActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'HEIGHT',
                      style: KLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: KLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      // data: SliderThemeData(),
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30,
                        ),
                        thumbColor: Color(0xffeb1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29eb1555),
                        inactiveTrackColor: Color(0xff8d8e98),
                      ),
                      child: Slider(
                          min: 120,
                          max: 220,
                          // activeColor: Colors.white,
                          value: height.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: KLabelTextStyle,
                          ),
                          Text(
                            '$weight',
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundIconButton(
                                iconData: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                iconData: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: KActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: KLabelTextStyle,
                        ),
                        Text(
                          '$age',
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: KActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'calculate',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new ResultsPage()));
            },
          ),
        ],
      ),
    );
  }
}

