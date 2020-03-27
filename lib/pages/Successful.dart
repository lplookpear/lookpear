import 'package:flutter/material.dart';

class Successful extends StatefulWidget {
  @override
  _SuccessfulState createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  Map<String, dynamic> data = {
    'hhihi': {
      'Answer': {'1': 'a'},
      'Info': {
        'Name': 'SAMSAK',
        'Lastname ': 'SUMSUM',
        'Email': 'erefef@test.com',
        'Tel': '0987654321'
      }
    },
    '222222': {
      'Answer': {'1': 'a'},
      'Info': {
        'Name': 'SOMCHAI',
        'Lastname ': 'SOOM',
        'Email': 'erefef@mail.com',
        'Tel': '0987654321'
      }
    }
  };

  List<TableRow> tableRowBuilder() {
    List<TableRow> rows = new List<TableRow>();
    for (var key in data.keys) {
      rows.add(TableRow(children: [
        Text(data[key]['Info']['Name']),
        Text(data[key]['Info']['Tel']),
        Text(data[key]['Info']['Email']),
      ]));
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Text(
          'Successful Candidates',
          style: TextStyle(fontSize: 25),
        ),
        Container(
          child: Table(columnWidths: {
            0: FractionColumnWidth(0.5),
            1: FractionColumnWidth(0.2),
            2: FractionColumnWidth(0.3)
          }, children: tableRowBuilder()),
          color: Colors.blue,
        ),
      ],
    ));
  }
}
