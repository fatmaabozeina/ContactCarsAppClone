import 'package:flutter/material.dart';

Container mainDropDown(String label) {
  return Container(
    height: 38,
    decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC6C8B6)),
        borderRadius: BorderRadius.circular(20)),
    child: DropdownButton(
        value: dropDownValue,
        items: carBrandData.map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          );
        }).toList(),
        hint: Align(
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
          color: Color(0xFF064D9F),
          textDirection: TextDirection.rtl,
        ),
        iconSize: 30,
        isExpanded: true,
        onChanged: (newValue) {
          dropDownValue = newValue;
        }),
  );
}

List<String> carBrandData = ['honda', 'nissan', 'fiat', 'reno', 'mg', 'f'];
String dropDownValue;
