import 'package:flutter/material.dart';
import 'constants.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelectionIconContent extends StatelessWidget {
  GenderSelectionIconContent({@required this.gendericon, @required this.genderText});
  final IconData gendericon;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(gendericon, color: Colors.white, size: 70.0),
        SizedBox(height: 10.0),
        Text(
          genderText,
          style: klabledTextStyle,
        ),
      ],
    );
  }
}
