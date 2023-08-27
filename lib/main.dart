import 'package:flutter/material.dart';
import 'package:quizzler/game_brain.dart';

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
  late GameBrain gameBrain;
  late String currentQuestion;
  late bool prevAnswerResult = true;

  scoreKeeper(bool userAnswer) {
    prevAnswerResult = gameBrain.checkAnswer(userAnswer);
    setState(() {
      currentQuestion=gameBrain.getQuestion();
    });
  }
  _QuizPageState() {
    gameBrain = GameBrain();
    currentQuestion = gameBrain.getQuestion();
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
                currentQuestion,
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
                scoreKeeper(true);
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
                  scoreKeeper(false);
                }),
          ),
        ),
        Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.all(30.0),
          //color: Colors.blue,
          child: scoresBox(),

          ),

      ],
    );
  }

  scoresBox() {
    Icon icon;

    if(prevAnswerResult == true) {
      icon = Icon(
        Icons.check,
        color: Colors.green,
        size: 30,
      );
    } else {
      icon = Icon(
        Icons.close,
        color: Colors.red,
        size: 30,
      );
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
        Text(
          "Correct: ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          gameBrain.questionsCorrectString,
          style: TextStyle(
            color: Colors.green,
            fontSize: 20,
          ),
        ),
        Text(
          "Wrong: ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          gameBrain.questionsIncorrectString,
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
          ),
        ),
        Text(
          "Score: ${gameBrain.questionsCorrectPercentString}% ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ]
    );
  }
}
