import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

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

  Future readDB() async {
    final FirebaseApp app = await FirebaseApp.configure(
      name: 'test',
      options: FirebaseOptions(
          googleAppID: '1:219065956997:android:abebdc4572ab97fe0547ec',
          gcmSenderID: '219065956997',
          apiKey: 'AIzaSyA8W2yxV_GI89UxvfwCX7fboFmc9Xf_v3k',
          projectID: 'senior-project-b93f1',
          databaseURL: 'https://senior-project-b93f1.firebaseio.com/'),
    );

    final FirebaseDatabase database = FirebaseDatabase(app: app);
    var recentJobsRef =
        database.reference().child('Mizu').orderByChild('created_at');
    return recentJobsRef.once().then((value) {
      if (value.value == null) return 'null';
      return value.value;
    }, onError: (e) {
      return null;
    });
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