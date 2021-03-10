import 'package:flutter/material.dart';

const kHeaderTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
  fontWeight: FontWeight.bold
);

const kBodyTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 20.0,
);

const kEmailInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
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