import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
    const List list = [1234];
   final List LIST = list;
  print(LIST);
  list.add(1);
  print(LIST);
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff350c0c),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF111626)),
        colorScheme: ColorScheme.dark(
          primary: Colors.red,
        ),
      ),

      home: InputPage(),
    );
  }
}
