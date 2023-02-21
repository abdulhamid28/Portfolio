import 'package:flutter/material.dart';

class Projects {
  String projectName;
  String projectDesc;
  String projectstack;

  Projects(
      {required this.projectName,
      required this.projectDesc,
      required this.projectstack});
}

List<Projects> project_list = [
  Projects(
      projectName: 'MACHINE LEARNING & VISION IMPLEMENTATION',
      projectDesc:
          'In this project various Google Ml model are implemented in application. Both default & custom models (MoBiNet,EfficientNet) with Pre-trained & trained data sets.Models are trained in Transfer Learning  approach.'
          'Realtime Face Detection with contours & landmarks.'
          'Realtime image classification (Pre-trained/trained).'
          'Realtime Object detection (Default/custom,Pre-trained/trained).'
          'Realtime Human Pose Detection(Image/Camera).'
          'Barcode scanner, Text Translation & Entity Extraction.',
      projectstack: 'FireBase ML kit, TensorFlow lite, Flutter, Google colab'),
  Projects(
      projectName: 'CHATGPT-3 APP',
      projectDesc: 'It is a cross platform  app that utilizes GPT-3 '
          '(Generative Pre-trained Transformer).'
          'Utilised from OpenAI platform using RestAPI.'
          'Speech to text and Text to speech library is used for user-friendly experience',
      projectstack:
          'Flutter , Dart , OpenAI API , Text to Speech , Speech to Text , RestAPI '),
  Projects(
      projectName: 'RESPONSIVE AND ANIMATED PORTFOLIO ',
      projectDesc:
          'This project is a responsive and animated portfolio website.It will feature a modern and sleek design,'
          'with a focus on showcasing the user\'s work. The website will be fully responsive.',
      projectstack: 'Flutter ,FireBase(Host), Dart'),
  Projects(
      projectstack: 'Android Studio , FireBase , Google Map API',
      projectName: 'PETITION APP',
      projectDesc: 'Its a app that is used to request,'
          ' typically one signed by many people in their locality for a particular cause,'
          'it may be a street lamp, drainage appealing to particular authority.'),
  Projects(
      projectName: 'COVID APP',
      projectDesc:
          'It is cross platform  app that  utilize Covid-19 API from WORLD HEALTH ORGANISATIONS '
          'for diseases trend analysis(Live Status) using  Dart language and '
          'to create awareness  about Covid -19.',
      projectstack: 'Flutter , RestAPI , Dart'),
  Projects(
      projectstack: 'Flutter , Dart , FireBase Cloud base, FireBase Auth',
      projectName: 'FLASHCHAT APP',
      projectDesc:
          'This is a chat Application that allow users to communicate in groups in real-time'
          ' This app uses Firebase Authentication(Email-password) for false Users'
          ' with Firebase cloud services for real time data storage.'),
  Projects(
      projectstack: 'Android Studio , Java, FireBase Auth',
      projectName: 'TECH PORTAL UI',
      projectDesc: 'Portal UI is a user interface that provides a single point'
          ' of access to variety of services. It provides a personalised '
          'experience for users.'),
];
