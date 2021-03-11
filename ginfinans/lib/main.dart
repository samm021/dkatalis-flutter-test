import 'package:flutter/material.dart';
import 'package:ginfinans/screens/email_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Map<String, String> registrationData =  {
    'email': '',
    'password': '',
    'goal': '',
    'income': '',
    'expense': '',
    'date': '',
    'time': ''
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmailScreen(registrationData: registrationData)
    );
  }
}