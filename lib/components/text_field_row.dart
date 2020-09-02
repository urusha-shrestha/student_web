import 'package:flutter/material.dart';
import 'package:project_web/constants.dart';

class TextFieldRow extends StatelessWidget {
  TextFieldRow({@required this.label, @required this.textFieldLabel});
  final String label;
  final String textFieldLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Text(
              '$label: ',
              style: kLabelTextStyle,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: textFieldLabel,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "$label cannot be empty.";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
