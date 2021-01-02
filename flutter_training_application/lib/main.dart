import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter Training'),
        ),
        body: Center(
          child: MyFlutterForm(),
        ),
      ),    );
  }
}

class MyFlutterForm extends StatefulWidget {
  @override
  _MyFlutterFormState createState() => _MyFlutterFormState();
}

class _MyFlutterFormState extends State<MyFlutterForm> {
  String _text = 'void main() {\n    runApp(MyApp())\;\n}';

  void _handleText(String e) {
    if (_text == e) {
      showAboutDialog(
        context: context,
        applicationIcon: Icon(Icons.photo),
        applicationName: "Correct!",
        applicationVersion: "My Flutter Training Ver 0.0.1",
      );
    }
    setState(() {
      //_text = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            new TextFormField(
              initialValue: "$_text",
              enabled: false,
              // 入力数
              maxLength: 100,
              maxLengthEnforced: false,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.left,
              obscureText: false,
              maxLines:3 ,
            ),
            new TextField(
              enabled: true,
              // 入力数
              maxLength: 100,
              maxLengthEnforced: false,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.left,
              obscureText: false,
              maxLines:3 ,
              //パスワード
              onChanged: _handleText,
            ),
          ],
        )
    );
  }}
