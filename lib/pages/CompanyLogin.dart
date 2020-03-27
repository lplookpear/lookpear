import 'package:final_project/pages/Successful.dart';
import 'package:flutter/material.dart';

class CompanyLogin extends StatefulWidget {
  @override
  _CompanyLoginState createState() => _CompanyLoginState();
}

class _CompanyLoginState extends State<CompanyLogin> {
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
