import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  final title;
  Titles(
      {this.title,
      this.fontWeight,
      this.textAlignment,
      this.color,
      this.font,
      this.isRightAlign});
  final fontWeight;
  final color;
  final textAlignment;
  final isRightAlign;
  final font;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textDirection: TextDirection.rtl,
      textAlign: (isRightAlign == true) ? TextAlign.right : textAlignment,
      style: TextStyle(
        fontSize: font,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
