import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function selectHandle;
  final int posQuestion;
  Quiz(
      {@required this.questionList,
      @required this.selectHandle,
      @required this.posQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questionList[posQuestion]),
        Question(questionList[posQuestion]['question']),
        ...(questionList[posQuestion]['answer'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(answer['text'], () => selectHandle(answer['point'])))
            .toList()
      ],
    );
  }
}
