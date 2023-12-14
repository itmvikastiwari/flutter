import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/formatted_text.dart';

import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const  QuestionScreen({super.key, required this.onSelectAnswer,});

  final void Function(String str) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {

  var currentQuestionId = 0;

  void answerQuestion(String ans){
    widget.onSelectAnswer(ans);
    setState(() {
      currentQuestionId += 1;
      print(currentQuestionId);
      if(currentQuestionId >= questions.length){
        currentQuestionId = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionId];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FormattedText(currentQuestion.question, 25),
              const SizedBox(
                height: 10,
                width: 10,
              ),
              ...currentQuestion.getShuffledList().map((answer) {
                return AnswerButton(text : answer, onTap: (){
                  answerQuestion(answer);
                });
              }),
            ]),
      ),
    );
  }
}
