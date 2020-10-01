import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 10) {
      resultText = 'You know me perfectly! :\') (Score: $resultScore)';
    } else if (7 <= resultScore && resultScore < 10) {
      resultText = 'You know me quite much :) (Score: $resultScore)';
    } else if (4 <= resultScore && resultScore < 7) {
      resultText =
          'Hmm... you know somethings about me but not a lot (Score: $resultScore)';
    } else {
      resultText = 'Get the hell outta here! (Score: $resultScore)';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
