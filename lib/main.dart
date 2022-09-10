import 'package:flutter/material.dart';
import './home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  void onChange() {
    setState(() {
      index = index == 0 ? 1 : 0;
    });
  }

  var questions = [
    "Name?",
    "Age?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(questions, index, onChange));
  }
}
