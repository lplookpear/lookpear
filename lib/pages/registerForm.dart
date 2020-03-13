import 'package:flutter/material.dart';

import 'assesmentTest.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  var textStyle = TextStyle(fontSize: 20);
  var boxDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.brown, width: 2.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    Widget textFormField(String label) {
      return Container(
        // padding: EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '$label',
                    style: textStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 40.0,
                    child: TextFormField(
                      decoration: boxDecoration,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    )),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
            color: Colors.teal[50],
            child: ListView(
              padding: EdgeInsets.all(15),
              children: <Widget>[
                SizedBox(height: 20),
                textFormField('Name'),
                SizedBox(height: 20),
                textFormField('Lastname'),
                SizedBox(height: 20),
                textFormField('Tel.'),
                SizedBox(height: 20),
                textFormField('Address'),
                SizedBox(height: 20),
                textFormField('Date of birth'),
                SizedBox(height: 20),
                textFormField('E-mail'),
                SizedBox(height: 20),
                textFormField('University'),
                SizedBox(height: 20),
                textFormField('Faculty/Major'),
                SizedBox(height: 20),
                textFormField('GPA'),
                SizedBox(height: 20),
                textFormField('Transcript'),
                SizedBox(height: 20),
                textFormField('Language'),
                SizedBox(height: 20),
                textFormField('Computer skill'),
                SizedBox(height: 20),
                textFormField('Soft skill'),
                SizedBox(height: 20),
                textFormField('Hard skill'),
                SizedBox(height: 20),
                textFormField('Experience'),
                SizedBox(height: 20),
                textFormField('Position'),
                SizedBox(height: 20),
                textFormField('Salary'),
                RaisedButton(
                    child: Text('Applicant', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssesmentTest()),
                      );
                    })
              ],
            )));
  }
}
