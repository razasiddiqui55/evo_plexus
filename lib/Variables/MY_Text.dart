import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final fontFamily;
  final double fontSize;
  final fontWeight;
  final bool bold;
  final TextAlign align;
  const MyText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 14,
    this.bold = false,
    this.align = TextAlign.center,
    this.fontFamily = "Rubik",
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: align,
    );
  }
}
