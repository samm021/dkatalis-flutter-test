import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({this.onPressNext});

  final Function onPressNext;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        height: 70.0,
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
            onPressed: onPressNext,
            color: Colors.blue[300],
            textColor: Colors.white,
            child: Text('Next')
        ),
      ),
    );
  }
}