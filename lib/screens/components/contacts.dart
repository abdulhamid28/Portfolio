import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'svg_creater.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
  String link;
  String url_for_contacts;
  String text;

  Contacts(
      {required this.link, required this.text, required this.url_for_contacts});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            backgroundColor: Color(0XFF242450),
            radius: 15,
            child: SvgCreater(
              link: link,
            )),
        Expanded(
          child: TextButton(
              onPressed: () async {
                final url = url_for_contacts;
                Uri uri = Uri.parse(url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: bodyTextColor),
                ),
              )),
        )
      ],
    );
  }
}
