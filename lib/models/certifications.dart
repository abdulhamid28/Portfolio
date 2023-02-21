import 'package:flutter/material.dart';
import 'package:portfolio/string_collections_for_contacts.dart';

class Certifications {
  String courseName;
  String courseCompany;
  String url;
  Certifications(
      {required this.courseName,
      required this.courseCompany,
      required this.url});
}

List<Certifications> certification_list = [
  Certifications(
      courseName: 'TECHNICAL CERTIFICATION',
      courseCompany: 'AMCAT',
      url: amcat_certificate_link),
  Certifications(
      courseName: 'JAVA PROGRAMMING BEGINNER TO MASTER',
      courseCompany: 'UDEMY',
      url: java_certificate_link),
  Certifications(
      courseName: 'FLUTTER BOOTCAMP WITH DART',
      courseCompany: 'UDEMY',
      url: flutter_certificate_link),
  Certifications(
      courseName: 'FLUTTER BLOC ARCHITECTURE',
      courseCompany: 'UDEMY',
      url: bloc_certificate_link),
  Certifications(
      courseName: 'MACHINE LEARNING WITH FLUTTER',
      courseCompany: 'UDEMY',
      url: flutter_ml_certificate),
  Certifications(
      courseName: 'JAVA SKILL CERTIFICATION TEST',
      courseCompany: 'HACKERRANK ',
      url: hackerrank_certificate_link),
  Certifications(
      courseName: 'PYTHON PROGRAMMING',
      courseCompany: 'CISCO',
      url: python_certificate_link),
  Certifications(
      courseName: 'BEC VANTANGE ',
      courseCompany: 'BRITISH CAMBRIDGE ENGLISH',
      url: bec_certificate_link),
];
