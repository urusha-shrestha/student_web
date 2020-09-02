import 'package:flutter/material.dart';
import 'package:project_web/constants.dart';

class Btn extends StatefulWidget {
  Btn({@required this.onPressed, @required this.buttonTitle});
  final Function onPressed;
  final String buttonTitle;

  @override
  _BtnState createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: widget.onPressed,
      padding: const EdgeInsets.all(0.0),
      child: Text(
        widget.buttonTitle,
        style: kButtonTextStyle,
      ),
    );
  }
}
