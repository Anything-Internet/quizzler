import 'package:flutter/material.dart';
import 'package:quizzler/questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scores = [];
  List<Question> questions = loadQuestions();
  int questionNumber = 0;
  late int totalQuestions;

  _QuizPageState() {
    totalQuestions = questions.length;
  }

  scoreKeeper(bool userPickedAnswer) {
    Icon correct = Icon(
      Icons.check,
      color: Colors.green,
    );
    Icon wrong = Icon(
      Icons.close,
      color: Colors.red,
    );
    setState(() {
      if (userPickedAnswer == true) {
        scores.add(correct);
      } else {
        scores.add(wrong);
      }
      questionNumber++;
      if (questionNumber >= totalQuestions) {
        questionNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if (questions[questionNumber].questionAnswer == true)
                  scoreKeeper(true);
                else
                  scoreKeeper(false);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (questions[questionNumber].questionAnswer == false)
                    scoreKeeper(true);
                  else
                    scoreKeeper(false);
                }),
          ),
        ),
        Container(
          height: 50,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.all(30.0),
          //color: Colors.blue,
          child: Row(
            children: [scoresBox(scores, context)],
          ),
        ),
      ],
    );
  }
}

scoresBox(scores, context) {
  int maxScores = (MediaQuery.of(context).size.width / 15).ceil();
  return Flexible(
    child: Wrap(
      children: scores.length > maxScores
          ? scores.sublist(scores.length - maxScores - 1, scores.length - 1)
          : scores,
    ),
  );
}
