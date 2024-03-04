import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  final Color backgroundColor;
  final double value;
  final double minHeight;
  final BorderRadiusGeometry borderRadius;
  final Color progressColor;

  CustomLinearProgressIndicator({
    required this.backgroundColor,
    required this.value,
    required this.minHeight,
    required this.borderRadius,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: minHeight,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: borderRadius,
            ),
          ),
          FractionallySizedBox(
            widthFactor: value,
            child: Container(
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}