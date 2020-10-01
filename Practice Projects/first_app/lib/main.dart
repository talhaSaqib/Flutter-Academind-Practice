import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "Which is my favourite movie?",
      'answers': [
        {'text': 'Godfather', 'score': 0},
        {'text': 'Batman', 'score': 0},
        {'text': 'Apocalypse Now', 'score': 1}
      ],
    },
    {
      'questionText': "I am ___",
      'answers': [
        {'text': 'Introvert', 'score': 1},
        {'text': 'Extrovert', 'score': 0},
        {'text': 'Ambivert', 'score': 0}
      ],
    },
    {
      'questionText': "What kind of music I like?",
      'answers': [
        {'text': 'Modern', 'score': 0},
        {'text': 'Rock', 'score': 0},
        {'text': 'Classical', 'score': 1}
      ],
    },
    {
      'questionText': "Which anime is very close to my heart?",
      'answers': [
        {'text': 'Attack on Titan', 'score': 0},
        {'text': 'Bleach', 'score': 1},
        {'text': 'Mushishi', 'score': 0}
      ],
    },
    {
      'questionText': "Which video game means a lot to me?",
      'answers': [
        {'text': 'Prince of Persia', 'score': 1},
        {'text': 'Call of Duty: Black Ops', 'score': 0},
        {'text': 'Doom', 'score': 0}
      ],
    },
    {
      'questionText': "Which one does I prefer?",
      'answers': [
        {'text': 'Guns', 'score': 0},
        {'text': 'Swords', 'score': 1},
        {'text': 'Nothing', 'score': 0}
      ],
    },
    {
      'questionText': "Which composer do I like most?",
      'answers': [
        {'text': 'Beethoven', 'score': 0},
        {'text': 'Chopin', 'score': 0},
        {'text': 'Vivaldi', 'score': 1}
      ],
    },
    {
      'questionText': "Which character do I like most?",
      'answers': [
        {'text': 'Lalo Salamanca from Better Call Saul', 'score': 1},
        {'text': 'Thomas Shelby from Peaky Blinders', 'score': 0},
        {'text': 'Javier Pena from Narcos', 'score': 0}
      ],
    },
    {
      'questionText': "My favorite Studio Ghibli film?",
      'answers': [
        {'text': 'Spirited Away', 'score': 1},
        {'text': 'Howl\'s Moving Castle', 'score': 0},
        {'text': 'The Wind Rises', 'score': 0}
      ],
    },
    {
      'questionText': "My favorite Disney film?",
      'answers': [
        {'text': 'Lion King', 'score': 0},
        {'text': 'Hercules', 'score': 1},
        {'text': 'Aladdin', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Do you know me?'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
