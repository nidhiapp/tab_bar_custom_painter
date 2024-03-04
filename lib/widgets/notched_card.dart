import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/widgets/notched_custom_painter.dart';

class Customcards extends StatefulWidget {
  final Color shapeColor;
  final Color circleColor;
  final Color arrowColor;
  final Widget child;
  const Customcards({super.key, required this.shapeColor, required this.circleColor, required this.arrowColor, required this.child});

  @override
  State<Customcards> createState() => _CustomcardsState();
}

class _CustomcardsState extends State<Customcards> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(

            constraints: BoxConstraints(maxWidth: 400),
            child: CustomPaint(
              painter: NotchedCurvedShapePainter(
                arrowColor: widget.arrowColor,
                circleColor: widget.circleColor,
                shapeColor: widget.shapeColor,
              ),
              child:widget.child,
            ),
          );
  }
}