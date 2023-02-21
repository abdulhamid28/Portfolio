import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class CircularProgress extends StatelessWidget {
  double percentage;
  String techname;

  CircularProgress({required this.percentage, required this.techname});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.5,
      child: Container(
        child: Column(
          children: [
            Container(
              height: 70,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: percentage),
                    duration: defaultDuration,
                    builder: (BuildContext context, percentage, Widget? child) {
                      return CircularProgressIndicator(
                        strokeWidth: 5,
                        color: primaryColor,
                        backgroundColor: darkColor,
                        value: percentage.toDouble(),
                      );
                    },
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: percentage),
                      duration: defaultDuration,
                      builder:
                          (BuildContext context, percentage, Widget? child) {
                        return Align(
                          alignment: FractionalOffset.center,
                          child: Text(
                            '${(percentage * 100).toInt().toString()}%',
                          ),
                        );
                      })
                ],
              ),
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                techname,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: bodyTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
