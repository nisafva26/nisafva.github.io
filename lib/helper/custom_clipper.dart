import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // var controlPoint1 = Offset(50, size.height-50 );
    //  var controlPoint2 = Offset(size.width - 50, size.height- 100);
    //   var endPoint = Offset(size.width, size.height -50);
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    //   path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
    //        controlPoint2.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height - 170);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height - 170);

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
