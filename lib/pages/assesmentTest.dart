import 'package:flutter/material.dart';
import '../constants.dart' as Constants;

class AssesmentTest extends StatefulWidget {
  @override
  _AssesmentTestState createState() => _AssesmentTestState();
}

class _AssesmentTestState extends State<AssesmentTest> {
  
  Map<int, QuestionData> _questionData = Constants.questionList;
  var _answer = {1: '', 2: '', 3: ''};
  var _questionNumber = 1;
  static var _lastQuestion;
  _AssesmentTestState() {
    _lastQuestion = _questionData.keys.length;
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
                    onPressed: () => {
                      setState(() {
                        _questionNumber--;
                      })
                    },
                  )
                : SizedBox(),
            _lastQuestion != _questionNumber
                ? OutlineButton(
                    child: Text('Next'),
                    onPressed: () => {
                      setState(() {
                        _questionNumber++;
                      })
                    },
                  )
                : SizedBox(),
            _lastQuestion == _questionNumber
                ? OutlineButton(
                    child: Text('Submit'),
                    onPressed: () => {},
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