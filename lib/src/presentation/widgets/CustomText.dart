import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double letterSpacing;
  final FontStyle fontStyle;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontFamily = 'Arial',
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.letterSpacing = 0.5,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
      ),
    );
  }
}
