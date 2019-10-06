import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPress, @required this.label});
  final Function onPress;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kLargeButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerheight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          color: kBottomContainerColor,
        ),
      ),
    );
  }
}

