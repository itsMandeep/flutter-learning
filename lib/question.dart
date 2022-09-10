import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Center(child: Text(question)),
      );
}
