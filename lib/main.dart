import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: QuizApp(),
        backgroundColor: Colors.black,
      ),
    ),
  );
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Container(
                child:
                Text('This is where the question text will go', style: TextStyle(fontSize: 24, color: Colors.white),textAlign: TextAlign.center, ),
              ),
            ),
          ),

          Expanded(
            flex:2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: FlatButton(
                        color:Colors.green,
                        onPressed: (){
                        },
                        child:Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('True', style: TextStyle(fontSize: 24, color: Colors.white),textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: FlatButton(
                        color:Colors.red,
                        onPressed: (){
                        },
                        child:Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('False', style: TextStyle(fontSize: 24, color: Colors.white),textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
