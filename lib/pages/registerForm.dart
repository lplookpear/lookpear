import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'assesmentTest.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

class RegisterForm extends StatefulWidget {
  Map<String, String> info;
  RegisterForm({this.info = null});
  @override
  _RegisterFormState createState() => _RegisterFormState(info);
}

class _RegisterFormState extends State<RegisterForm> {
  _RegisterFormState(info) {
    if (info != null) {
      this.info = info;
      this.isDetail = true;
      getProfile();
    }
  }
  bool isDetail = false;
  String urlProfileImage = '';
  String urlTrans = '';
  var textStyle = TextStyle(fontSize: 20);
  var boxDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.brown, width: 2.0),
    ),
  );
  var boxErrorDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.brown, width: 2.0),
    ),
    errorText: 'Please enter some text',
  );
  var _companys = ['Honda', 'Nissan', 'Toyota'];
  var _position = [
    'Electrical engineer',
    'Suspension and steering',
    'Engine repair',
    'Technician'
  ];
  String _selectedPosition;
  String _selectedCompany;
  Map<String, String> info = Map<String, String>();
  File image;
  final _formKey = GlobalKey<FormState>();
  File transcript;
  Map<String, TextEditingController> controllers =
      new Map<String, TextEditingController>();
  bool _isSubmit = false;

  void getProfile() async {
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
    final StorageReference storageReference =
        storage.ref().child(info['Name'] + info['Lastname']).child('profile');
    var tmpUrlProfileImage = await storageReference.getDownloadURL();

    final StorageReference storageReferenceTs = storage
        .ref()
        .child(info['Name'] + info['Lastname'])
        .child('transcript');

    var tmpUrlTrans = await storageReferenceTs.getDownloadURL();
    setState(() {
      urlProfileImage = tmpUrlProfileImage;
      urlTrans = tmpUrlTrans;
    });
  }

  String getInfo(String label) {
    if (label == 'Faculty/Major') {
      return info['Major'];
    } else if (label == 'Tel.') {
      return info['Tel'];
    } else {
      return info[label];
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget textFormField(String label) {
      bool haveValue = false;
      if (controllers[label] == null) {
        haveValue = getInfo(label) != null ? true : false;
        var controller = new TextEditingController(text: getInfo(label));
        controllers[label] = controller;
      }
      var controller = controllers[label];
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
                      enabled: !haveValue,
                      controller: controller,
                      decoration: controller.text == "" && _isSubmit
                          ? boxErrorDecoration
                          : boxDecoration,
                      onFieldSubmitted: (value) {
                        controller.text = value;
                      },
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Please enter some text';
                      //   }
                      //   return null;
                      // },
                      // onSaved: (value) {
                      //   info[label] = value;
                      // },
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

    Future getTranscript() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        this.transcript = image;
      });
    }

    Widget profilePicture = image != null || (isDetail && urlProfileImage != "")
        ? Center(
            child: CircleAvatar(
            maxRadius: 100,
            minRadius: 100,
            backgroundImage: isDetail
                ? NetworkImage(urlProfileImage)
                : ExactAssetImage(image.path),
          ))
        : Center(
            child: CircleAvatar(
              maxRadius: 100,
              minRadius: 100,
              child: IconButton(
                icon: Icon(Icons.perm_identity),
                iconSize: 100,
                onPressed: isDetail ? null : () => getImage(),
              ),
            ),
          );

    Widget AttachText() {
      return transcript != null
          ? Text('Attached', style: textStyle)
          : Text("Transcript", style: textStyle);
    }

    void showTranscript() async {
      await showDialog(
          context: context,
          builder: (_) => ImageDialog(
                src: urlTrans,
              ));
    }

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
                  textFormField('Faculty/Major'),
                  SizedBox(height: 20),
                  textFormField('GPA'),
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
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child:
                            isDetail ? Text('Transcript') : Text('Attach here'),
                        onPressed: isDetail
                            ? () => showTranscript()
                            : () => getTranscript(),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      isDetail ? SizedBox() : AttachText()
                    ],
                  ),
                  SizedBox(height: 20),
                ])),
                isDetail
                    ? SizedBox()
                    : new DropdownButton(
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
                isDetail
                    ? SizedBox()
                    : new DropdownButton(
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
                isDetail
                    ? SizedBox()
                    : RaisedButton(
                        child: Text('Submit', style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          bool isPass = true;
                          info = Map<String, String>();
                          controllers.forEach((label, controller) {
                            if (controller.text.isEmpty) {
                              isPass = false;
                              setState(() {
                                _isSubmit = true;
                              });
                            }
                            if (label == 'Faculty/Major') {
                              info['Major'] = controller.text;
                            } else if (label == 'Tel.') {
                              info['Tel'] = controller.text;
                            } else {
                              info[label] = controller.text;
                            }
                          });

                          if (isPass) {
                            info['Company'] = _selectedCompany;
                            info['Position'] = _selectedPosition;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AssesmentTest(
                                      position: _selectedPosition,
                                      info: info,
                                      image: image,
                                      transcript: transcript)),
                            );
                          }
                        }),
                !isDetail
                    ? SizedBox()
                    : RaisedButton(
                        child: Text(
                          'send e-mail',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () async {
                          final MailOptions mailOptions = MailOptions(
                            body:
                                'Congratulation! our hiring team was positively excited to inform you that you have passed the qualifications of the job and position that you have applied for. The company will contact you once again for additional information.  Sincerely, Hiring team  ',
                            subject: 'Congratulation on your application!',
                            recipients: [info['E-mail']],
                            isHTML: true,
                          );

                          await FlutterMailer.send(mailOptions);
                        },
                      )
              ],
            )));
  }
}

class ImageDialog extends StatelessWidget {
  final String src;
  ImageDialog({this.src});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 400,
        height: 600,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(src), fit: BoxFit.cover)),
      ),
    );
  }
}
