import 'package:flutter/material.dart';

class Candidate extends StatefulWidget {
  Candidate({this.info});
  Map<String, String> info;
  @override
  _CandidateState createState() => _CandidateState(info);
}

class _CandidateState extends State<Candidate> {
  Map<String, String> info;
  _CandidateState(this.info);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(),
    );
  }
}
