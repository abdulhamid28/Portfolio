import 'package:flutter/material.dart';
import 'all_sections.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/string_collections_for_contacts.dart';
import 'package:portfolio/responsive/responsive.dart';

class SidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context) ? null : 300,
      color: bgColor,
      child: Column(
        children: [
          HeaderCard(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  ContactSection(),
                  Text(
                    'TECHNOLOGY',
                    style: TextStyle(
                        letterSpacing: 1.2, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  TechnologySection(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    'LANGUAGE',
                    style: TextStyle(
                        letterSpacing: 1.5, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  LanguageSection(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    'RECOGNITION ',
                    style: TextStyle(
                        letterSpacing: 1.5, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  RecognitionSection(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Divider(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  SkillKnowledgeSection(),
                  Divider(),
                  SizedBox(height: defaultPadding),
                  RepositorySection(),
                  SizedBox(height: defaultPadding),
                  SocialMediaSection(),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  TextButton(
                    onPressed: () async {
                      final url = myresume_url;
                      Uri uri = Uri.parse(url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Download CV',
                          style: TextStyle(color: bodyTextColor),
                        ),
                        Icon(Icons.download),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
