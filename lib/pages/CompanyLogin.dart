import 'package:final_project/pages/Successful.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class CompanyLogin extends StatefulWidget {
  @override
  _CompanyLoginState createState() => _CompanyLoginState();
}

class _CompanyLoginState extends State<CompanyLogin> {
  Future login(String user, String pwd) async {
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
    var userRef = database.reference().child('User').child(user);
    var userFound = await userRef.once().then((value) => value.value);
    if (userFound != null) {
      var pass = userFound['Password'];
      if (pass == pwd) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Successful()));
      } else {
        _showDialog();
      }
    } else {
      _showDialog();
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Error"),
          content: new Text("Username or password incorrect"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Username'),
              Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 40.0,
                  child: TextField())
            ],
          ),
          Row(
            children: <Widget>[
              Text('Password'),
              Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 40.0,
                  child: TextField())
            ],
          ),
          RaisedButton(
            child: Text('Login'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Successful()));
            },
          )
        ],
      )),
    );
  }
}
