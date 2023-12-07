import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  late final Color? colour;
  late final Widget? cardChild;

  ReusableCard({Color? colour, Widget? cardChild}) {
    this.colour = colour;
    this.cardChild = cardChild;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}