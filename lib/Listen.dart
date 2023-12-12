import 'dart:collection';
import 'dart:ffi';

import 'package:bmi_calculator_flutter/Screens/input_page.dart';
import 'package:bmi_calculator_flutter/main.dart';
import 'package:flutter/cupertino.dart';



Map<String , int > phoneBook = {
  'Kyle' : 641651316516,
  'Any' : 641655646516,
  'James' : 64168498498,
  'Tim' :  64168431569,

};
void main() {
  phoneBook.addAll({'jim':545464641});
  phoneBook['k'] = 456654164;
  phoneBook.values;

print(phoneBook);


}

