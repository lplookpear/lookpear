import 'package:final_project/pages/Successful.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class CompanyLogin extends StatefulWidget {
  @override
  _CompanyLoginState createState() => _CompanyLoginState();
}

class _CompanyLoginState extends State<CompanyLogin> {
  Future login(String username, String pwd) async {
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
    var userRef = database.reference().child('User').child(username);
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

  var controllerUsername = new TextEditingController();
  var controllerPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: <Widget>[
          Container(
            color: Colors.pink[50],
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.asset(
                "images/building.PNG",
                //width: 100, height:100
              )
            ]),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20),
                      Container(
                          width: MediaQuery.of(context).size.width - 200,
                          height: 40.0,
                          child: TextField(controller: controllerUsername))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20),
                      Container(
                          width: MediaQuery.of(context).size.width - 200,
                          height: 40.0,
                          child: TextField(
                            controller: controllerPassword,
                            obscureText: true,
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    child: Text('Login', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      login(controllerUsername.text, controllerPassword.text);
                    },
                  ),
                  SizedBox(height: 100)
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Company login',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ]));
  }
}
