import 'package:flutter/material.dart';
import '../constants.dart';

class IconContentWidget extends StatelessWidget {
  IconContentWidget({this.theIcon, this.label});
  final IconData theIcon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(theIcon, size: 80),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
