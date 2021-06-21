import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final helperText;
  final hintLabel;
  final isAlignedLeft;
  final alignment;
  final addIcon;
  final icon;
  MainTextField(
      {this.icon,
      this.addIcon,
      this.helperText,
      this.hintLabel,
      this.isAlignedLeft,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Expanded(
        child: TextField(
          textAlign: (isAlignedLeft == true) ? TextAlign.right : alignment,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Color(0xFFC6C8B6))),
              contentPadding: EdgeInsets.only(right: 20),
              helperText: helperText,
              hintText: hintLabel,
              prefixIcon: (addIcon) ?? icon,
              helperStyle: TextStyle(
                color: Colors.red,
                fontSize: 18,
              )),
          cursorHeight: 30,
          showCursor: true,
        ),
      ),
    );
  }
}
