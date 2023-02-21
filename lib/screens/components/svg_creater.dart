import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';

class SvgCreater extends StatelessWidget {
  String link;
  SvgCreater({required this.link});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
      link,
      height: 25,
      width: 25,
    );
  }
}
