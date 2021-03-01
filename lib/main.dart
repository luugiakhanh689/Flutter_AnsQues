import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questionList = const [
    {
      'question': 'do you want to build a snow man ?',
      'answer': [
        {'text': 'yes', 'point': 10},
        {'text': 'no', 'point': 10}
      ]
    },
    {
      'question': 'where is bill gate working ?',
      'answer': [
        {'text': 'microsoft', 'point': 20},
        {'text': 'alibaba', 'point': 10},
        {'text': 'amazon', 'point': 10}
      ]
    },
    {
      'question': 'who is hero in marvel world',
      'answer': [
        {'text': 'superman', 'point': 10},
        {'text': 'ironman', 'point': 20},
        {'text': 'wonder woman', 'point': 10},
        {'text': 'batman', 'point': 10}
      ]
    }
  ];
  int _posQuestion = 0, _totalScore = 0;
  void answerQuestion(int point) {
    setState(() {
      _posQuestion++;
      _totalScore += point;
    });
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _posQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First App'),
            ),
            body: (_posQuestion < _questionList.length)
                ? Quiz(
                    questionList: _questionList,
                    selectHandle: answerQuestion,
                    posQuestion: _posQuestion)
                : Result(_totalScore, resetQuiz)));
  }
}
