import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.0,
              letterSpacing: 6.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        color: kButtomCardColor,
        margin: EdgeInsets.only(top: 8.0),
        width: double.infinity,
        height: kButtomContainerHeight,
      ),
    );
  }
}
