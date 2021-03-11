import 'package:flutter/material.dart';
import 'package:ginfinans/screens/email_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final Map<String, dynamic> registrationData =  {
    'email': null,
    'password': null,
    'goal': null,
    'income': null,
    'expense': null,
    'date': null,
    'time': null
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) =>
            MediaQuery(data: MediaQuery.of(context)
                .copyWith(alwaysUse24HourFormat: true), child: child),
        home: EmailScreen(registrationData: registrationData)
    );
  }
}