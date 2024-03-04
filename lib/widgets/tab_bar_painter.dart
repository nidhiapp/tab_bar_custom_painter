import 'package:flutter/material.dart';

class TabPainter extends CustomPainter {
  final Color color;
  TabPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, .45 * size.height);
    path.quadraticBezierTo(0, 0, .14 * size.width, 0);
    path.lineTo(.7 * size.width, 0);
    path.quadraticBezierTo(
        .92 * size.width, 0, .9 * size.width, .45 * size.height);
    path.lineTo(.9 * size.width, .45 * size.height);
    path.quadraticBezierTo(
        .9 * size.width, .8 * size.height,  size.width,  size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
    
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}