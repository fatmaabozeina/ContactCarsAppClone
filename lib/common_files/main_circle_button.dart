import 'package:flutter/material.dart';

class MainCircleButton extends StatelessWidget {
  final label;
  final fillColor;
  final labelColor;
  final buttonAction;
  final isOnlyText;
  final withShape;
  MainCircleButton(
      {this.withShape,
      this.label,
      this.fillColor,
      this.labelColor,
      this.buttonAction,
      this.isOnlyText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: buttonAction,
        style: ButtonStyle(
            // padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(3)),
            backgroundColor: MaterialStateProperty.all<Color>(fillColor),
            foregroundColor: MaterialStateProperty.all<Color>(labelColor),
            shape: withShape == true
                ? MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                  )
                : MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
        child: isOnlyText == true
            ? Text(
                label,
                style: TextStyle(fontSize: 18),
              )
            : ListTile(
                leading: Icon(Icons.search),
                title: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ));
  }
}
