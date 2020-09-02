import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_web/components/data_table.dart';
import 'package:project_web/components/year_drop_down_row.dart';
import 'components/text_field_row.dart';
import 'components/radio_button_row.dart';
import 'components/btn.dart';
import 'components/faculty_down_row.dart';
import 'components/data_table.dart';
import 'constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(
          child: Text('STUDENTS'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: borderDecoration(),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'ADD DATA',
                              style: kHeadingTextStyle,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      TextFieldRow(
                                          label: 'Date',
                                          textFieldLabel: 'DD/MM/YY'),
                                      TextFieldRow(
                                          label: 'Name',
                                          textFieldLabel: 'Enter Name'),
                                      TextFieldRow(
                                          label: 'Phone',
                                          textFieldLabel: 'Enter Phone Number'),
                                      TextFieldRow(
                                          label: 'Address',
                                          textFieldLabel: 'Enter Address'),
                                      RadioButtonRow(),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      YearDropDown(),
                                      FacultyDropDown(),
                                      Btn(onPressed: null, buttonTitle: 'Add'),
                                      Btn(
                                          onPressed: null,
                                          buttonTitle: 'Reset'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: borderDecoration(),
                      child: Column(
                        children: [
                          Text(
                            'Search box',
                            style: kHeadingTextStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextFieldRow(
                                    label: 'Name',
                                    textFieldLabel: 'Enter Name'),
                                TextFieldRow(
                                    label: 'Phone',
                                    textFieldLabel: 'Enter Phone Number'),
                                YearDropDown(),
                                FacultyDropDown(),
                                Btn(onPressed: null, buttonTitle: 'Search'),
                                Btn(onPressed: null, buttonTitle: 'Reset'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Datatb(),
          ],
        ),
      ),
    );
  }
}
