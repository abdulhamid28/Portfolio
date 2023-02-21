import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class LanguageKnown extends StatelessWidget {
  String language;
  double percentage;
  LanguageKnown({required this.percentage, required this.language});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (BuildContext context, double percentage, Widget? child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    language,
                    style: TextStyle(
                        color: bodyTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text('${(percentage * 100).toInt().toString()}%'),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              LinearProgressIndicator(
                value: percentage,
                backgroundColor: darkColor,
                color: primaryColor,
              ),
              SizedBox(
                height: defaultPadding,
              ),
            ],
          );
        });
  }
}
