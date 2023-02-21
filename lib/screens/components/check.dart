import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 15,
        backgroundColor: Color(0XFF242450),
        child: Icon(
          Icons.check,
          color: primaryColor,
        ));
  }
}
