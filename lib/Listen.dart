import 'dart:collection';
import 'dart:ffi';

import 'package:bmi_calculator_flutter/input_page.dart';
import 'package:bmi_calculator_flutter/main.dart';
import 'package:flutter/cupertino.dart';

void main(){
  Car car = Car(CarType.convertible);
  print(car);









}

class Car{
  late CarType carStyle;

  Car(CarType carType){
    this.carStyle = carType;
  }

}
enum CarType{
  hatchback,
  suv ,
  convertible,

}