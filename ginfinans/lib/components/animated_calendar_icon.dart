import 'package:flutter/material.dart';

class AnimatedCalendarIcon extends StatelessWidget {
  const AnimatedCalendarIcon({
    Key key,
    @required this.animationController,
  }) : super(key: key);

  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration:
      BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white
      ),
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Container(
            decoration: ShapeDecoration(
              color: Colors.blue.withOpacity(0.7),
              shape: CircleBorder(),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0 * animationController.value),
              child: child,
            ),
          );
        },
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            color: Colors.blue,
            icon: Icon(Icons.calendar_today_sharp),
          ),
        ),
      ),
    );
  }
}