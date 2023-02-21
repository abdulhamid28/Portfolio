import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'check.dart';

class SkillBox extends StatelessWidget {
  String skill;
  SkillBox({required this.skill});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Check(),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Expanded(
          child: Text(
            skill,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: bodyTextColor,
            ),
          ),
        )
      ],
    );
  }
}
