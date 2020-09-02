import 'package:flutter/material.dart';
import 'package:project_web/constants.dart';

class YearDropDown extends StatefulWidget {
  @override
  _YearDropDownState createState() => _YearDropDownState();
}

class _YearDropDownState extends State<YearDropDown> {
  List<String> yearList = ['None', '2020', '2019', '2018', '2017', '2016'];

  String selectedYear = "None";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          child: Row(
            children: <Widget>[
              Text(
                'Year: ',
                style: kLabelTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: yearList.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Center(child: Text(dropDownStringItem)),
                    );
                  }).toList(),
                  onChanged: (String selectedValue) {
                    setState(() {
                      this.selectedYear = selectedValue;
                    });
                  },
                  value: selectedYear,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
