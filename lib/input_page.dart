import 'dart:typed_data';

import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1e33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xff111328);
enum Gender{
  MALE,FEMALE
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color colorMale = inactiveCardColor;
  Color colorFemale = inactiveCardColor;

  void updateColor(Gender gender) {
    if (gender == Gender.MALE) {
      if (colorMale == inactiveCardColor) {
        colorMale = activeCardColor;
        colorFemale = inactiveCardColor;
      } else {
        colorMale = inactiveCardColor;
      }
    } else if (gender == Gender.FEMALE) {
      if (colorFemale == inactiveCardColor) {
        colorFemale = activeCardColor;
        colorMale = inactiveCardColor;
      } else {
        colorFemale = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.MALE);
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        colorMale = Colors.yellow;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                      colour: colorMale,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.FEMALE);
                      });
                    },
                    child: new ReusableCard(
                        cardChild:
                            IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                        colour: colorFemale),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: GestureDetector(
                  onTap: () {},
                  child: new ReusableCard(
                      cardChild: Container(), colour: activeCardColor))),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardChild: Container(), colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: [],
                    ),
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: bottomContainerColor,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 40),
              ),
            ),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
