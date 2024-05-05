import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {



    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            children: [

              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.lime ),
                child: Center(child: Text(((data['question_index'] as int) + 1).toString())),
              ),

              Expanded(
                child: Column(
                  children: [
                    Text(data['question'].toString()),
                    SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'].toString()),
                    Text(data['correct_answer'].toString()),
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
