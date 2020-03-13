import 'dart:io';

import 'package:flutter/material.dart';

import 'assesmentTest.dart';
import 'package:image_picker/image_picker.dart';

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
  var _companys = ['Honda', 'Nissan', 'Toyota'];
  var _position = [
    'Electrical engineer',
    'Mechanical engineer',
    'Suspension and brake technicain',
    'Engine technician'
  ];
  String _selectedPosition;
  String _selectedCompany;
  Map<String, String> info;

  File image;
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  Map<String, TextEditingController> controllers;

  @override
  Widget build(BuildContext context) {
    Widget textFormField(String label) {
      var controller = new TextEditingController();
      controllers[label] = controller;
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
                      controller: controller,
                      decoration: boxDecoration,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        info[label] = value;
                      },
                    )),
              ],
            ),
          ],
        ),
      );
    }

    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        this.image = image;
      });
    }

    Widget profilePicture = image == null
        ? Center(
            child: CircleAvatar(
              maxRadius: 100,
              minRadius: 100,
              child: IconButton(
                icon: Icon(Icons.perm_identity),
                iconSize: 100,
                onPressed: () => getImage(),
              ),
            ),
          )
        : Center(
            child: CircleAvatar(
            maxRadius: 100,
            minRadius: 100,
            backgroundImage: ExactAssetImage(image.path),
          ));

    return Scaffold(
        body: Container(
            color: Colors.teal[50],
            child: ListView(
              padding: EdgeInsets.all(15),
              children: <Widget>[
                SizedBox(height: 40),
                profilePicture,
                SizedBox(height: 20),
                Container(
                    child: Form(
                        // key: _formKey,
                        child: Column(children: <Widget>[
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
                ]))),
                Container(
                    child: Form(
                        // key: _formKey2,
                        child: Column(children: <Widget>[
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
                  textFormField('Salary'),
                ]))),
                new DropdownButton(
                  items: _companys.map((String companyName) {
                    return new DropdownMenuItem(
                      value: companyName,
                      child: new Text(companyName),
                    );
                  }).toList(),
                  hint: Text('Select company'),
                  value: _selectedCompany,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCompany = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),
                new DropdownButton(
                  items: _position.map((String position) {
                    return new DropdownMenuItem(
                      value: position,
                      child: new Text(position),
                    );
                  }).toList(),
                  hint: Text('Select position'),
                  value: _selectedPosition,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedPosition = newValue;
                    });
                  },
                ),
                RaisedButton(
                    child: Text('Submit', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      // if (_formKey.currentState.validate() &&
                      //     _formKey2.currentState.validate()) {
                      //   _formKey.currentState.save();
                      //   _formKey2.currentState.save();
                      print(controllers);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AssesmentTest(position: _selectedPosition)),
                      );
                      // }
                    })
              ],
            )));
  }
}
