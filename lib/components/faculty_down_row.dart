import 'package:flutter/material.dart';
import 'package:project_web/constants.dart';

class FacultyDropDown extends StatefulWidget {
  @override
  _FacultyDropDownState createState() => _FacultyDropDownState();
}

class _FacultyDropDownState extends State<FacultyDropDown> {
  List<String> facultyList = [
    'None',
    'Science',
    'Management',
    'Humanities',
    'Commerce'
  ];

  String selectedFaculty = "None";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Text(
              'Faculty: ',
              style: kLabelTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                items: facultyList.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Center(child: Text(dropDownStringItem)),
                  );
                }).toList(),
                onChanged: (String selectedValue) {
                  setState(() {
                    this.selectedFaculty = selectedValue;
                  });
                },
                value: selectedFaculty,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
