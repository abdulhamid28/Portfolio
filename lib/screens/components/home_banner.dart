import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/string_collections_for_contacts.dart';
import '../../responsive/responsive.dart';
import 'rich_tag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.3 : 2.8,
      child: Stack(fit: StackFit.expand, children: [
        Container(
          margin: EdgeInsets.all(defaultPadding),
          child: Image.asset(
            'Assets/Images/techworldnew.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(defaultPadding),
          color: darkColor.withOpacity(0.66),
          child: Padding(
            padding: EdgeInsets.only(left: defaultPadding, top: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Explore my Tech\nSpace...!',
                    style: Responsive.isDesktop(context)
                        ? TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 45,
                            fontWeight: FontWeight.bold)
                        : TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? defaultPadding
                      : Responsive.isMobile(context)
                          ? defaultPadding / 3
                          : defaultPadding / 2,
                ),
                Row(
                  children: [
                    RichTag(
                      end: '<',
                    ),
                    DefaultTextStyle(
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: Responsive.isDesktop(context) ? 20 : 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                      child: AnimatedTextKit(
                          pause: Duration(seconds: 2),
                          animatedTexts: [
                            TyperAnimatedText(
                              'Hello Every One ',
                            ),
                            TyperAnimatedText(
                              'I have implemented  varoius ML models  ',
                            ),
                            TyperAnimatedText(
                              'Both trained & pre-trained models ',
                            ),
                            TyperAnimatedText(
                                'I have developed various Apps & Websites'),
                            TyperAnimatedText(
                                'Petition App Using AndroidStudio'),
                            TyperAnimatedText('ChatGPT-3 App using Flutter'),
                            TyperAnimatedText(
                                'Dark Theme Responsive Portfolio using Flutter '),
                            TyperAnimatedText(
                                'FlashChat application using FireBase'),
                            TyperAnimatedText('COVID App using RestAPI'),
                            TyperAnimatedText('I Love Solving Problems'),
                          ]),
                    ),
                    RichTag(
                      end: ' </',
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
