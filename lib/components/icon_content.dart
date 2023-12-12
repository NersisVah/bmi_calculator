import 'package:flutter/material.dart';
import '../constants.dart';


import '../Screens/input_page.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final Gender gender;

  IconContent(this.icon, this.gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80,),
        SizedBox(
          height: 15,
        ),
        Text(
          gender.toString(),
          style: KLabelTextStyle,
        ),
      ],
    );
  }
}

