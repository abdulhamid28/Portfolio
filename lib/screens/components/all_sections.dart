import 'package:flutter/material.dart';
import '../../string_collections_for_contacts.dart';
import 'skill_box.dart';
import 'languages_known.dart';
import 'package:portfolio/constants.dart';
import 'contacts.dart';
import 'circular_progress.dart';
import 'package:portfolio/responsive/responsive.dart';

class LanguageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          LanguageKnown(
            language: 'Java',
            percentage: 0.9,
          ),
          LanguageKnown(percentage: 0.9, language: 'Dart'),
          LanguageKnown(percentage: 0.8, language: 'C Programming'),
          LanguageKnown(percentage: 0.6, language: 'JavaScript'),
          LanguageKnown(percentage: 0.7, language: 'Cascading Style Sheet'),
          LanguageKnown(percentage: 0.9, language: 'Html'),
        ],
      ),
    );
  }
}

class TechnologySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CircularProgress(
              percentage: 0.7,
              techname: 'Flutter',
            ),
          ),
          SizedBox(
            width: defaultPadding,
          ),
          Expanded(
              child: CircularProgress(
            percentage: 0.8,
            techname: 'FireBase',
          )),
          SizedBox(width: defaultPadding),
          Expanded(
            child: CircularProgress(
              percentage: 0.6,
              techname: 'Android ',
            ),
          ),
        ],
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Contacts(
            text: 'LinkedIn',
            link: 'Assets/Icons/linkedin.svg',
            url_for_contacts: url_forlinkedin,
          ),
          SizedBox(
            height: 5,
          ),
          Contacts(
            text: 'Mobile No',
            link: 'Assets/Icons/phone-call.svg',
            url_for_contacts: telephoneUrl,
          ),
          SizedBox(
            height: 5,
          ),
          Contacts(
              link: 'Assets/Icons/email.svg',
              text: 'abdulhamdi282002@gmail.com',
              url_for_contacts: emailUrl),
          SizedBox(
            height: 5,
          ),
          Contacts(
              link: 'Assets/Icons/pin.svg',
              text: 'Chennai,Tamil Nadu,India',
              url_for_contacts: mapUrl),
          Divider(),
          SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: Container(
        margin: EdgeInsets.only(top: defaultPadding),
        color: Color(0XFF242430),
        child: Column(
          children: [
            SizedBox(
              height: defaultPadding,
            ),
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('Assets/Images/dp.jpeg'),
            ),
            Text(
              'ABDUL HAMID',
              style: TextStyle(
                  letterSpacing: 1.2, height: 2, fontWeight: FontWeight.bold),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                  height: 1.5,
                  color: bodyTextColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                'A self motivated active learner with\ngoal oriented mindset ',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: bodyTextColor, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecognitionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Contacts(
              link: 'Assets/Icons/leetcode_black.svg',
              text: 'LeetCode',
              url_for_contacts: leet_code_link),
          SizedBox(
            height: 5,
          ),
          Contacts(
              link: 'Assets/Icons/hackerrank.svg',
              text: 'Hackerrank',
              url_for_contacts: hackerrank_link),
          SizedBox(
            height: 5,
          ),
          Contacts(
              link: 'Assets/Icons/skillrack.svg',
              text: 'Skillrack',
              url_for_contacts: url_forskillrack)
        ],
      ),
    );
  }
}

class SocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Social Media',
            style: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Contacts(
              link: 'Assets/Icons/instagram.svg',
              text: 'Instagram',
              url_for_contacts: instagram_link)
        ],
      ),
    );
  }
}

class RepositorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'REPOSITORY',
            style: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Contacts(
              link: 'Assets/Icons/github.svg',
              text: 'GitHub',
              url_for_contacts: github_link)
        ],
      ),
    );
  }
}

class SkillKnowledgeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('SKILLS & KNOWLEDGE',
              style:
                  TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold)),
          SizedBox(
            height: defaultPadding,
          ),
          SkillBox(skill: 'Flutter Business Logic Components '),
          SizedBox(
            height: 5,
          ),
          SkillBox(skill: 'Flutter Machine Learning(TensorFlow) '),
          SizedBox(
            height: 5,
          ),
          SkillBox(skill: 'Git Knowledge'),
          SizedBox(
            height: 5,
          ),
          SkillBox(
            skill: 'Problem Solving',
          ),
          SizedBox(
            height: 5,
          ),
          SkillBox(
            skill: 'Debugging',
          ),
          SizedBox(
            height: 5,
          ),
          SkillBox(
            skill: 'FrontEnd Coding',
          ),
          SizedBox(
            height: 5,
          ),
          SkillBox(
            skill: 'BackEnd Coding',
          ),
          SizedBox(
            height: 5,
          ),
          SkillBox(skill: 'TeamWork & Collaboration'),
        ],
      ),
    );
  }
}
