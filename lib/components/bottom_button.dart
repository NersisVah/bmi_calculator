import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function()? onTap;


  BottomButton({required this.buttonTitle , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toUpperCase(),
            style: kLargeButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 12.0),
        color: KBottomContainerColor,
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}