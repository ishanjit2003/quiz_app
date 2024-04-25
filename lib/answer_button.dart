import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answers, required this.onTap});

  final answers;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black12),
        onPressed: onTap,
        child: Text(
          answers,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ));
  }
}
