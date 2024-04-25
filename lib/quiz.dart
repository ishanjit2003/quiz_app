import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

   List<String> selectedAnswer=[];

  Widget ?activeScreen;

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length==questions.length){
      setState(() {
        activeScreen=HomeScreen(switchScreen);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    activeScreen=HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      selectedAnswer=[];
      activeScreen=Questions(onSelectAnswer: chooseAnswer,);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
          body:activeScreen
      ),
    );
  }
}
