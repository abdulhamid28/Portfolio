import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/screens/home_screen.dart';
import '../constants.dart';
import '../models/certifications.dart';
import '../screens/components/svg_creater.dart';
import 'package:portfolio/functions/url_function.dart';

List<Widget> listOfCertificates = [];
List<Widget> funct() {
  for (var i = 0; i < certification_list.length; i++) {
    GestureDetector cont = GestureDetector(
      onTap: () {
        urlfunc(certification_list[i].url);
      },
      child: HoverAnimatedContainer(
        width: 350,
        hoverColor: Colors.white30,
        padding: EdgeInsets.all(defaultPadding),
        margin: EdgeInsets.all(defaultPadding),
        color: Color(0XFF242430),
        child: Column(
          children: [
            Text(
              '${certification_list[i].courseName}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgCreater(link: 'Assets/Icons/medal.svg'),
                Text(
                  certification_list[i].courseCompany,
                  style: TextStyle(color: primaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    listOfCertificates.add(cont);
  }
  return listOfCertificates;
}
