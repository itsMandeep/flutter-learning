import 'package:flutter/material.dart';
import './question.dart';

class Home extends StatelessWidget {
  final List<String> questions;
  final int index;
  final VoidCallback onChange;
  const Home(this.questions, this.index, this.onChange, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Question(questions[index]),
            TextButton(
              onPressed: onChange,
              child: const Text('Change Question!'),
            )
          ],
        ),
      ),
    );
  }
}
