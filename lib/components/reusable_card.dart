import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  late final Color? colour;
  late final Widget? cardChild;
  late final Function()? onPress;

  ReusableCard.m({Color? colour, Widget? cardChild}) {
    this.colour = colour;
    this.cardChild = cardChild;

  }

  ReusableCard({this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius:   BorderRadius.circular(10),
          color: colour,
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}