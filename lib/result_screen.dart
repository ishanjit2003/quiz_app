import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/quiz.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswer});


  List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({'question_index': i,
        'question': questions[i],
        'correct_answer':questions[i].answer[0],
      'user_answer':chosenAnswer[i]}
      );
    }
    return summary;
  } //Object stores everything ,very flexible datatype




  @override

  Widget build(BuildContext context) {


    final summaryData=getSummaryData();
    final numTotalQuestions=questions.length;
    final numCorrectQuestions=summaryData.where((data){
      return data['user_answer']==data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered $numCorrectQuestions out of $numTotalQuestions questions correctly"),
            SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummaryData()),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed:(){

            }, child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
