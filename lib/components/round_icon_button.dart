import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? iconData;
  final Function()? onPressed;

  RoundIconButton({this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 66, height: 56),
      shape: CircleBorder(),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8.0,
      highlightElevation: 15,
      highlightColor: KBottomContainerColor,
      fillColor: Color(0xff4c4f5e),
      child: Icon(iconData),
      onPressed: onPressed,
    );
  }
}
