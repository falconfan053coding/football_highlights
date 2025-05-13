import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int? maxLines;
  final TextDecoration decoration;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String? fontFamily;
  final FontStyle? fontStyle;

  const MyCustomText(
      this.text, {
        super.key,
        this.textAlign = TextAlign.start,
        this.overflow = TextOverflow.clip,
        this.maxLines,
        this.decoration = TextDecoration.none,
        this.color = Colors.black,
        this.fontSize = 14,
        this.fontFamily,
        this.fontWeight = FontWeight.w400,
        this.fontStyle,
      });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          decoration: decoration,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          fontStyle: fontStyle,
        ));
  }
}
