import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  color: const Color.fromARGB(123, 250, 250, 250), //or wrap it with opacity widget
                  width: 300, 'assets/images/quiz_logo.png'),
              SizedBox(
                height: 30,
              ),
              Text(
                "Learn Flutter the Fun way !!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.purple)),
                  onPressed: startQuiz,
                  icon: Icon(Icons.arrow_right_alt_sharp),
                  label: Text('Start Quiz'))
            ],
          ),
        ),
      ),
    );
  }
}
