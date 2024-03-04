import 'package:flutter/material.dart';

class NotchedCurvedShapePainter extends CustomPainter {
  final Color shapeColor;
  final Color circleColor;
  final Color arrowColor;
  final double height;
  final double width;
  NotchedCurvedShapePainter(
      {required this.shapeColor,
      required this.circleColor,
      required this.arrowColor,
      this.width=361,
      this.height = 224});

  @override
  void paint(Canvas canvas, Size size) {
    Paint shapePaint = Paint()
      ..color = shapeColor
      ..style = PaintingStyle.fill;

    canvas.clipRRect(RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      bottomRight: Radius.circular(16),
      bottomLeft: Radius.circular(16),
      topLeft: Radius.circular(16),
    ));

    Path path = Path();
    //start point of line is by default(0,0)
    path.lineTo(size.width-60, 0);
    //adjust first curve
    path.quadraticBezierTo(
       size.width-42, 1, size.width-43, 17);
    //adjust second curve
    path.quadraticBezierTo(
        size.width-51, 45, size.width-22, 52);
    //adjust third curve
    path.quadraticBezierTo(
         size.width, 51,size.width,74);
    //draw line to coordinate (size.width, size.height)
    path.lineTo(size.width, size.height);

    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, shapePaint);

    //draw circle
    double circleRadius =20; //adjust radius
    double circleX = size.width-20; //adjust X position as needed
    double circleY = 26; //adjust Y position as needed

    Paint circlePaint = Paint()
      ..color = circleColor
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(circleX, circleY), circleRadius, circlePaint);

    // Draw arrow
    double arrowLength = circleRadius * 1;
    double arrowWidth = circleRadius / 3.0;

    Paint arrowPaint = Paint()
      ..color = arrowColor
      ..strokeWidth = 2.6
      ..strokeCap = StrokeCap.round;
//center line
    canvas.drawLine(
      Offset(circleX - arrowLength / 3, circleY + arrowLength / 4),
      Offset(circleX + arrowLength / 4, circleY - arrowLength / 4),
      arrowPaint,
    );
//uper line
    canvas.drawLine(
      Offset(circleX + arrowLength / 3, circleY - arrowLength / 3),
      Offset(circleX + arrowLength / 6 - arrowWidth,
          circleY - arrowLength / 8 - arrowWidth),
      arrowPaint,
    );
//lower line
    canvas.drawLine(
      Offset(circleX + arrowLength / 3, circleY - arrowLength / 4),
      Offset(circleX + arrowLength / 3, circleY - arrowLength / 7 + arrowWidth),
      arrowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
