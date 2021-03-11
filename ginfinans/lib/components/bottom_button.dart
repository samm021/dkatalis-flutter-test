import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({this.onPressNext, this.whatScreen});

  final Function onPressNext;
  final String whatScreen;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: (whatScreen == 'emailScreen') ? Colors.grey[100] : Colors.blueAccent[200],
      child: Container(
        height: 70.0,
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
            onPressed: onPressNext,
            color: Colors.blueAccent[100],
            textColor: Colors.white,
            child: Text('Next'),
            disabledColor: Colors.grey[400],
            disabledTextColor: Colors.white,
        ),
      ),
    );
  }
}