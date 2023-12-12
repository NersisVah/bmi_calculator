import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());


 class BMICalculator extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30,
          ),
          thumbColor: Color(0xffeb1555),
          activeTrackColor: Colors.white,
          overlayColor: Color(0x29eb1555),
        ),
        // primaryColor: Color(0xff350c0c),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF111626)),
        // colorScheme: ColorScheme.dark(
        //   primary: Colors.red,
        // ),
      ),

      home: InputPage(),
    );
  }

}
