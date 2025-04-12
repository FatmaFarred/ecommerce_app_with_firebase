import 'package:flutter/material.dart';

class CustomCurveEdge extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();   // the starting point is the 0,0 position of the widget
    path.lineTo(0, size.height); // this draws the line from current point to the left bottom position of widget
    final fristCurve= Offset(0, size.height-20);
    final lastCurve= Offset(30, size.height-20);
    path.quadraticBezierTo(fristCurve.dx, fristCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFristCurve= Offset(0, size.height-20);
    final secondLastCurve= Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(secondFristCurve.dx, secondFristCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    final thirdFristCurve= Offset(size.width, size.height-20);
    final thirdLastCurve= Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFristCurve.dx, thirdFristCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);
    path.lineTo(size.width, 0); // this draws the line from current point to the right bottom position of the widget.
    path.close(); // this closes the loop from current position to the starting point of widget
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }



}