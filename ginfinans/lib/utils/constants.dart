import 'package:flutter/material.dart';

const kHeaderTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0,
  fontWeight: FontWeight.bold
);

const kBodyTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 18.0,
);

const kPasswordScreenHeaderStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

const kPasswordScreenBodyStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 15.0,
  color: Colors.white
);

final kPasswordScreenComplexityStyle = TextStyle(
    fontFamily: 'Spartan MB',
    fontSize: 18.0,
    color: Colors.yellow[700]
);

final kEmailInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.grey[100],
  hintText: 'Email',
  prefixIcon: Icon(
      Icons.email_outlined,
      color: Colors.grey,
  ),
  hintStyle: TextStyle(
      color: Colors.grey
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none
  ),
);

const kPasswordInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Create Password',
  suffixIcon: Icon(
    Icons.remove_red_eye,
    color: Colors.blue,
  ),
  hintStyle: TextStyle(
      color: Colors.grey
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none
  ),
);