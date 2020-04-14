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
  Map<String, dynamic> data = new Map<String, dynamic>();

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
    for (var comName in companyList) {
      var ref = database.reference().child(comName);
      var register = await ref.once().then((value) => value.value);
      if (register != null) {
        for (var key in register.keys) {
          registerList[key] = register[key];
        }
      }
    }
    var data = registerList;
    Map<String, dynamic> passList = new Map<String, dynamic>();
    for (var key in data.keys) {
      int totalcorrectanswer = 0;
      var position = data[key]['info']['Position'];
      int questionNumber = 0;
      for (var answer in data[key]['answer']) {
        // String registerAnswer =
        //     data[key]['answer'][questionnumber].toLowerCase();
        if (questionNumber == 0) {
        } else {
          String correctAnswer =
              Constants.answer[position][questionNumber].toLowerCase();

          if (answer.toLowerCase() == correctAnswer) {
            totalcorrectanswer++;
          }
        }

        questionNumber++;
      }
      debugPrint('total = $totalcorrectanswer');
      var persen =
          (100 * totalcorrectanswer) / Constants.answer[position].length;
      debugPrint('persen = $persen');
      if (persen > 80) {
        passList[key] = data[key];
      }
    }
    setState(() {
      this.data = passList;
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
