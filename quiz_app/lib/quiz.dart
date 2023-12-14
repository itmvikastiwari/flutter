
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

import 'home.dart';

class Quiz extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
      return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = Home(switchScreen);
    super.initState();
  }

  void onChooseAnswer(String ans){
    selectedAnswers.add(ans);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(selectedAnswers: selectedAnswers, restartQuiz: restartQuiz);
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = Home(switchScreen);
      selectedAnswers = [];
    });
  }

  void switchScreen(){
    print("Vikas");
    setState(() {
      activeScreen = QuestionScreen(onSelectAnswer: onChooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
      print("Build method called");
      return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Container(
            decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors),
      ),
    child: activeScreen
    ),
    ),);

  }

}

