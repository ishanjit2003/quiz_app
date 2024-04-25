import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_screen.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionindex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionindex];
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Text(
                  currentQuestion.text,
                  textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                      ),

                )),
                SizedBox(
                  height: 30,
                ),
                // AnswerButton(onTap: (){},answers: currentQuestion.answer[0],),
                // AnswerButton(onTap: (){},answers: currentQuestion.answer[1],),
                // AnswerButton(onTap: (){},answers: currentQuestion.answer[2],),
                // AnswerButton(onTap: (){},answers: currentQuestion.answer[3],),

                ...currentQuestion.getShuffledAnswer().map((answer) {
                  return AnswerButton(answers: answer, onTap: (){
                    answerQuestion(answer);
                  });
                })
              ],
            ),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
