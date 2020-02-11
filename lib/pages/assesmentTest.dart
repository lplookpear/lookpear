import 'package:flutter/material.dart';

class AssesmentTest extends StatefulWidget {
  @override
  _AssesmentTestState createState() => _AssesmentTestState();
}

class _AssesmentTestState extends State<AssesmentTest> {
  List<QuestionData> _questionData = [
    QuestionData(index: 1, question: 'AAAAAAAAAA', 
      choise: ['A','B', 'C', 'D'])
  ];

  @override
  Widget build(BuildContext context) {
    
    String company = 'fjfj';



    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Assesment Test'),
      ),
      body: company == 'Mitsu' ? Text('xxxxx') : Text('yyyyy')
    );
  }
}


class QuestionData {
  final int index;
  final List<String> choise;
  final String question;

  QuestionData({this.index, this.choise, this.question});
}