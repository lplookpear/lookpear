import 'package:final_project/pages/registerForm.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import '../constants.dart' as Constants;

class Successful extends StatefulWidget {
  String company;
  Successful({this.company});
  @override
  _SuccessfulState createState() => _SuccessfulState(company: company);
}

class _SuccessfulState extends State<Successful> {
  String company;
  _SuccessfulState({this.company}) {
    getSuccessfulList();
  }
  Map<String, dynamic> data = {
    'hhihi': {
      'answer': {
        1: 'b',
        2: 'd',
        3: 'd',
        4: 'b',
        5: 'c',
        6: 'c',
        7: 'c',
        8: 'c',
        9: 'b',
        10: 'b',
        11: 'c',
        12: 'd',
        13: 'c'
      },
      'info': {
        'Name': 'SAMSAK',
        'Lastname': 'SUMSUM',
        'E-mail': 'erefef@test.com',
        'Tel': '0987654321',
        'Position': 'Electrical engineer'
      }
    },
    '222222': {
      'answer': {
        1: 'b',
        2: 'b',
        3: 'b',
        4: 'b',
        5: 'b',
        6: 'b',
        7: 'b',
        8: 'c',
        9: 'c',
        10: 'c',
        11: 'b',
        12: 'd',
        13: 'b',
        14: 'a',
        15: 'c'
      },
      'info': {
        'Name': 'SOMCHAI',
        'Lastname': 'SOOM',
        'E-mail': 'erefef@mail.com',
        'Tel': '0987654321',
        'Position': 'Suspension and steering'
      }
    }
  };
  Future getSuccessfulList() async {
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
    var companyList = company.split(',');
    Map<String, dynamic> registerList = new Map<String, dynamic>();
    // for (var comName in companyList) {
    //   var ref = database.reference().child(comName);
    //   var register = await ref.once().then((value) => value.value);
    //   if (register != null) {
    //     for (var key in register.keys) {
    //       registerList[key] = register[key];
    //     }
    //   }
    // }
    for (var key in data.keys) {
      int totalcorrectanswer = 0;
      var position = data[key]['info']['Position'];
      for (var questionnumber in data[key]['answer'].keys) {
        String registerAnswer =
            data[key]['answer'][questionnumber].toLowerCase();
        String correctAnswer =
            Constants.answer[position][questionnumber].toLowerCase();
        if (registerAnswer == correctAnswer) {
          totalcorrectanswer++;
        }
      }
      debugPrint('total = $totalcorrectanswer');
      var persen = (100 * totalcorrectanswer) / Constants.answer[position].length;
      debugPrint('persen = $persen');
      if (persen > 80) {
        registerList[key] = data[key];
      }
    }
    setState(() {
      data = registerList;
    });
  }

  void showDetail(Map<String, String> info) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RegisterForm(
                  info: info,
                )));
  }

  Map<String, String> getInfo(dynamic infodata) {
    var info = new Map<String, String>();
    for (var key in infodata.keys) {
      info[key] = infodata[key];
    }
    return info;
  }

  List<TableRow> tableRowBuilder() {
    List<TableRow> rows = new List<TableRow>();
    for (var key in data.keys) {
      String name = data[key]['info']['Name'];
      String lname = data[key]['info']['Lastname'];
      Map<String, String> info = getInfo(data[key]['info']);
      rows.add(TableRow(
        children: [
          GestureDetector(
            child: Container(
              child: Text('$name $lname'),
            ),
            onTap: () {
              showDetail(info);
            },
          ),
          GestureDetector(
            child: Container(child: Text(data[key]['info']['Tel'])),
            onTap: () {
              showDetail(info);
            },
          ),
          GestureDetector(
            child: Container(
              child: Text(data[key]['info']['E-mail']),
            ),
            onTap: () {
              showDetail(info);
            },
          )
        ],
      ));
      rows.add(TableRow(children: [
        SizedBox(height: 10),
        SizedBox(height: 10),
        SizedBox(height: 10)
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
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Table(columnWidths: {
            0: FractionColumnWidth(0.4),
            1: FractionColumnWidth(0.3),
            2: FractionColumnWidth(0.3)
          }, children: tableRowBuilder()),
          color: Colors.blue,
        ),
      ],
    ));
  }
}
