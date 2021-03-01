import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _clickHandle;
  Answer(this._answer, this._clickHandle);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answer),
        onPressed: _clickHandle,
      ),
    );
  }
}
