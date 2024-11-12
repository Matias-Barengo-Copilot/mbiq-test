import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final double width;
  final double height;
  final String text;

  const ButtonPrimary(this.width, this.height, this.text);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: width, // between 0 and 1 // 1 for max
      heightFactor: height,
      child: Container(
        height: 20,
        width: 20,
        color: Colors.red,
      ),
    );
  }
}
