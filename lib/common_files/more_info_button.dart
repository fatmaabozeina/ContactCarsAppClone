import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';

class MoreInfoButton extends StatelessWidget {
  final label;
  final buttonAction;
  MoreInfoButton({this.label, this.buttonAction});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonAction,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Titles(
            title: label,
            font: 18.0,
            color: Color(0xFFEE7022),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.calculate_outlined,
            color: Color(0xFFEE7022),
          ),
        ],
      ),
    );
  }
}
