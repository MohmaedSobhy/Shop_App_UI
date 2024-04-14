import 'package:flutter/material.dart';

class CircleColorWidget extends StatelessWidget {
  final Color color;
  final bool currentColor;
  const CircleColorWidget(
      {super.key, required this.color, required this.currentColor});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      width: 35,
      height: 35,
      margin: const EdgeInsets.only(right: 15),
      padding: (currentColor) ? const EdgeInsets.all(3) : null,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (currentColor) ? Colors.white : color,
          border: (currentColor) ? Border.all(color: color) : null),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
