import "package:flutter/material.dart";
import 'package:quizzler/question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionNumber = 0;

  List<Widget> scoreKeeper = [];
  List<Question> questionBank = [
    Question(q: 'The capital of Pakistan is Lahore', a: false),
    Question(q: 'Pakistan has got Presidential system', a: false),
    Question(q: 'Imran khan is the prime minister of Pakistan', a: true)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                questionBank[questionNumber].question,
                textDirection: TextDirection.ltr,
                style: TextStyle(decoration: TextDecoration.none),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                bool answer = questionBank[questionNumber].answerIt;
                if (answer == true) {
                  print('your are right');
                } else {
                  print('your are wrong');
                }
                setState(() {
                  questionNumber++;
                });
              },
              child: Text(
                'True',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                bool answer = questionBank[questionNumber].answerIt;
                if (answer == false) {
                  ;
                } else {
                  print('your are wrong');
                }
                setState(() {
                  questionNumber++;
                });
              },
              child: Text(
                'False',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
