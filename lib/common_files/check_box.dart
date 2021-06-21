import 'package:flutter/material.dart';

Checkbox checkBox(bool boxValue, Function boxOnChanged,
    {bool isCircleIcon = true}) {
  return Checkbox(
      checkColor: Colors.white,
      activeColor: Colors.green,
      value: boxValue,
      shape: isCircleIcon ? CircleBorder() : ContinuousRectangleBorder(),
      onChanged: boxOnChanged);
}
