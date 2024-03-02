import 'package:flutter/material.dart';

class RPSCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.quadraticBezierTo(size.width * 0.0037500, size.height * 0.6325000, size.width * 0.0050000, size.height * 0.5100000);
    path_0.quadraticBezierTo(size.width * 0.0207500, size.height * 0.2597500, size.width * 0.2600000, size.height * 0.2450000);
    path_0.quadraticBezierTo(size.width * 0.6275000, size.height * 0.2487500, size.width * 0.7500000, size.height * 0.2500000);
    path_0.quadraticBezierTo(size.width * 0.9897500, size.height * 0.2235000, size.width * 1.0050000, 0);
    path_0.lineTo(size.width, size.height * 1.0050000);
    path_0.lineTo(0, size.height);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
