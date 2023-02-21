import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void urlfunc(String text) async {
  final url = text;
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
