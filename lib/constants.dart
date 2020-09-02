import 'package:flutter/material.dart';

const kDataTableColumnLabel =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

const kHeadingTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

const kButtonTextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black);

const kLabelTextStyle = TextStyle(fontSize: 20);

BoxDecoration borderDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 3,
    ),
  );
}
