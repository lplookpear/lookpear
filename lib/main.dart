import 'package:flutter/material.dart';

import 'pages/assesmentTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Applicant', 
              style: TextStyle(fontSize: 20)),
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondRoute()),
  );
}
            ),

            RaisedButton(
              child: Text('Company', 
              style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}



class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.5,color: Colors.black);
        var boxDecoration = InputDecoration(
                    enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown, width: 2.0),
                        ),
          );
                return Scaffold(
                  appBar: AppBar(
                    title: Text("Second Route"),
                  ),
                  body: ListView(children: <Widget>[
            
                        SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Name', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        )
      ,                         SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Lastname', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Column(children: <Widget>[
                        Text('Tel.', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        )
                             ,SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Address', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        )
      ,
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Date of birth', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('E-mail', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('University', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Faculty/Major', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('GPA', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Transcript', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Language', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Computer skill', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Softskill', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Hardskill', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Experience', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Position', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                              SizedBox(height: 20),
                    Row(children: <Widget>[
                        Text('Salary', style: textStyle),
                    
                    SizedBox(width: 20),
                    
        Container(              
          width: 200.0, 
          height: 40.0,
          child: 
                  TextFormField(
                    
                  decoration: boxDecoration,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        )
        
),],
        ),
                   RaisedButton(
              child: Text('Applicant', 
              style: TextStyle(fontSize: 20)),
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AssesmentTest()),
  );
})],
        
      )
    );
  }
}
