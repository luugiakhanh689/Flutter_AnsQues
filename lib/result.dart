import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _totalScore;
  final Function _resetQuiz;
  Result(this._totalScore, this._resetQuiz);
  String get resultPhrase {
    if (_totalScore > 30) return 'You are the best';
    return 'You are so bad';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: double.infinity,
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          FlatButton(
            child: Text(
              'retry quiz',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: _resetQuiz,
          )
        ],
      ),
    );
  }
}
