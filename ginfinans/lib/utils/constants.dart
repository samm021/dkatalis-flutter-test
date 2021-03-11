import 'package:flutter/material.dart';

const kHeaderTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
  height: 1.3,
);

const kBodyTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w800,
  height: 1.5
);

const kPasswordScreenHeaderStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

const kPasswordScreenBodyStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.white
);

final kPasswordScreenComplexityStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.yellow[700]
);

const kSelectOptionLabelStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.grey
);

final kWhiteCheckGreenFilled = Stack(
  children: [
    Positioned.fill(
        child: Container(
          margin: EdgeInsets.all(5.0),
          color: Colors.white,
        )
    ),
    Icon(
        Icons.check_circle,
        color: Colors.green
    ),
  ],
);

const kSelectOptionHintStyle = TextStyle(
    height: 1.2,
    fontSize: 18.0,
    color: Colors.black
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
  errorStyle: TextStyle(
    color: Colors.blue
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none
  ),
);

