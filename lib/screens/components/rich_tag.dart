import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive/responsive.dart';

class RichTag extends StatelessWidget {
  String end;
  RichTag({required this.end});
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: end,
          style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 20 : 15,
              fontWeight: FontWeight.bold,
              color: primaryColor)),
      TextSpan(
          text: 'CODE',
          style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 17 : 12,
              fontWeight: FontWeight.bold,
              color: primaryColor)),
      TextSpan(
          text: '> ',
          style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 20 : 15,
              fontWeight: FontWeight.bold,
              color: primaryColor))
    ]));
  }
}
