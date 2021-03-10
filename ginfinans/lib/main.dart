import 'package:flutter/material.dart';
import 'package:ginfinans/screens/email_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: EmailScreen(),
    );
  }
}