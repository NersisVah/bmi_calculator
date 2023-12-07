import 'package:flutter/material.dart';
const labelTextStyle = TextStyle(fontSize: 18,
  color: Color(0xff8d8e98),);
class IconContent extends StatelessWidget {
  final IconData icon;
  final String string;

  IconContent(this.icon, this.string);

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
          string,
          style: labelTextStyle,
        ),
      ],
    );
  }
}

