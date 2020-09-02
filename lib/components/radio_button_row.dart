import 'package:flutter/material.dart';
import 'package:project_web/constants.dart';

class RadioButtonRow extends StatefulWidget {
  @override
  _RadioButtonRowState createState() => _RadioButtonRowState();
}

class _RadioButtonRowState extends State<RadioButtonRow> {
  String gender = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'Gender: ',
              style: kLabelTextStyle,
            ),
            Radiobtn('Male'),
            Radiobtn('Female'),
          ],
        ),
      ),
    );
  }

  Expanded Radiobtn(String label) {
    return Expanded(
      child: RadioListTile(
        groupValue: gender,
        title: Text(label),
        value: label,
        onChanged: (val) {
          setState(() {
            gender = val;
          });
        },
      ),
    );
  }
}
