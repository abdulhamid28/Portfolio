import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/home_banner.dart';
import 'package:portfolio/screens/main_screen.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/components/projects.dart';
import '../responsive/responsive.dart';
import 'components/certificates.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      SizedBox(
        height: defaultPadding * 2,
      ),
      Text(
        'MY PROJECTS',
        style: TextStyle(
            fontSize: Responsive.isDesktop(context)
                ? 20
                : Responsive.isTablet(context) ||
                        Responsive.isLargeMobile(context)
                    ? 18
                    : 16,
            letterSpacing: 1.8,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: defaultPadding,
      ),
      ProjectsBox(),
      Divider(),
      SizedBox(
        height: defaultPadding * 2,
      ),
      Text(
        'MY CERTIFICATIONS',
        style: TextStyle(
            fontSize: Responsive.isDesktop(context)
                ? 20
                : Responsive.isTablet(context) ||
                        Responsive.isLargeMobile(context)
                    ? 18
                    : 16,
            letterSpacing: 1.8,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: defaultPadding,
      ),
      Certificates(),
      SizedBox(
        height: defaultPadding / 2,
      ),
      Container(
        child: Text(
          'SCROLL LEFT --- >',
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
              color: primaryColor),
        ),
      ),
      SizedBox(
        height: defaultPadding,
      ),
    ]);
  }
}
