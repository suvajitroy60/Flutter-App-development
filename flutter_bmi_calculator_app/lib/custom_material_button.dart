import 'package:flutter/material.dart';

class customMaterialButton extends StatelessWidget {
  customMaterialButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 45.0,
        width: 45.0,
      ),
      shape: CircleBorder(),
    );
  }
}
