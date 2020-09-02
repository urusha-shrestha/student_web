import 'package:flutter/material.dart';
import 'package:project_web/constants.dart';

class Datatb extends StatefulWidget {
  @override
  _DatatbState createState() => _DatatbState();
}

class _DatatbState extends State<Datatb> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: borderDecoration(),
        width: double.infinity,
        child: DataTable(
          sortAscending: true,
          columns: [
            buildDataColumn('Name'),
            buildDataColumn('Phone'),
            buildDataColumn('Address'),
            buildDataColumn('Year'),
            buildDataColumn('Faculty'),
          ],
          rows: [],
        ),
      ),
    );
  }

  DataColumn buildDataColumn(String label) {
    return DataColumn(
        label: Text(
      label,
      style: kDataTableColumnLabel,
    ));
  }
}
