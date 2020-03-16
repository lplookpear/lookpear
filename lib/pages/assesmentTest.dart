import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import '../constants.dart' as Constants;

class AssesmentTest extends StatefulWidget {
  AssesmentTest({this.position, this.info, this.image, this.transcript});
  final String position;

  Map<String, String> info;
  File image;
  File transcript;
  @override
  _AssesmentTestState createState() =>
      _AssesmentTestState(position, info, image, transcript);
}

class _AssesmentTestState extends State<AssesmentTest> {
  var _answer = {1: '', 2: '', 3: ''};
  var _questionNumber = 1;
  static var _lastQuestion;
  final String position;
  Map<String, String> info;
  File image;
  File transcript;
  Map<int, QuestionData> _questionData;
  _AssesmentTestState(this.position, this.info, this.image, this.transcript) {
    var tmp = Constants.questionList[position];
    _questionData = tmp;
    _lastQuestion = _questionData.keys.length;
  }
  Future onSubmit() async {
    final FirebaseApp app = await FirebaseApp.configure(
      name: 'test',
      options: FirebaseOptions(
          googleAppID: '1:219065956997:android:abebdc4572ab97fe0547ec',
          gcmSenderID: '219065956997',
          apiKey: 'AIzaSyA8W2yxV_GI89UxvfwCX7fboFmc9Xf_v3k',
          projectID: 'senior-project-b93f1',
          databaseURL: 'https://senior-project-b93f1.firebaseio.com/'),
    );
    final FirebaseStorage storage = FirebaseStorage(
        app: app, storageBucket: 'gs://senior-project-b93f1.appspot.com');
    final FirebaseDatabase database = FirebaseDatabase(app: app);
    DatabaseReference _messagesRef = database.reference().child('messages');
    final StorageReference storageReference =
        storage.ref().child('test').child('profile');
    // info['Name'] + info['Lastname']
    StorageUploadTask uploadTask = storageReference.putFile(image);
    await uploadTask.onComplete;
    final StorageReference storageReferenceTs =
        storage.ref().child('test').child('transcript');
    StorageUploadTask uploadTaskTs = storageReferenceTs.putFile(transcript);
    await uploadTaskTs.onComplete;
  }

  Widget question(QuestionData questionData, int questionNumber) {
    var title = questionData.question;
    var choiseA = questionData.choise['A'];
    var choiseB = questionData.choise['B'];
    var choiseC = questionData.choise['C'];
    var choiseD = questionData.choise['D'];
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$title'),
            RadioListTile(
              title: Text('$choiseA'),
              value: 'A',
              groupValue: _answer[questionNumber],
              onChanged: (value) {
                setState(() {
                  _answer[questionNumber] = value;
                });
              },
            ),
            RadioListTile(
              title: Text('$choiseB'),
              value: 'B',
              groupValue: _answer[questionNumber],
              onChanged: (value) {
                setState(() {
                  _answer[questionNumber] = value;
                });
              },
            ),
            RadioListTile(
              title: Text('$choiseC'),
              value: 'C',
              groupValue: _answer[questionNumber],
              onChanged: (value) {
                setState(() {
                  _answer[questionNumber] = value;
                });
              },
            ),
            RadioListTile(
              title: Text('$choiseD'),
              value: 'D',
              groupValue: _answer[questionNumber],
              onChanged: (value) {
                setState(() {
                  _answer[questionNumber] = value;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            1 != _questionNumber
                ? OutlineButton(
                    child: Text('Back'),
                    onPressed: () {
                      setState(() {
                        _questionNumber--;
                      });
                    },
                  )
                : SizedBox(),
            _lastQuestion != _questionNumber
                ? OutlineButton(
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
                        _questionNumber++;
                      });
                    },
                  )
                : SizedBox(),
            _lastQuestion == _questionNumber
                ? OutlineButton(
                    child: Text('Submit'),
                    onPressed: () => onSubmit(),
                  )
                : SizedBox(),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Assesment Test'),
        ),
        body: question(_questionData[_questionNumber], _questionNumber));
  }
}

class QuestionData {
  final Map<String, String> choise;
  final String question;

  QuestionData({this.choise, this.question});
}
