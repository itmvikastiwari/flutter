import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/formatted_text.dart';
import 'package:quiz_app/model/quiz_questions.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.selectedAnswers, required this.restartQuiz});

  final List<String> selectedAnswers;

  final void Function() restartQuiz;

  @override
  State<StatefulWidget> createState() {
    return _ResultScreen();
  }
}

class _ResultScreen extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    var onRestartQuiz = widget.restartQuiz;
    var selectedAns = widget.selectedAnswers;
    Set<String> correctAnsSet = questions.map((e) => e.correctAns).toSet();
    int correctAnsCount = 0;
    int total = questions.length;
    for (int i = 0; i < selectedAns.length; i++) {
      if (correctAnsSet.contains(selectedAns[i])) {
        correctAnsCount++;
      }
    }
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormattedText(
                "You Answered $correctAnsCount out of $total questions correctly!",
                20,
                align: TextAlign.start),
            SizedBox(height: 30),
            Column(
                children: questions.asMap().entries.map((entry) {
              int index = entry.key;
              var question = entry.value;
              return ResultOutput(
                question: question,
                selectedAns: selectedAns,
                index: index,
              );
            }).toList()),
            const SizedBox(height: 30),
            ElevatedButton.icon(
                onPressed: onRestartQuiz,
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                label: const Text("Restart Quiz"),
                icon: const Icon(Icons.arrow_right_alt))
          ],
        ),
      ),
    );

    //   [
    //     FormattedText("You Answered $correctAnsCount out of $total questions correctly!", 20, align: TextAlign.start),
    //
    //       children: questions.asMap().entries.map((entry) {
    //         int index = entry.key;
    //         var question = entry.value;
    //         return ResultOutput(
    //           question: question,
    //           selectedAns: selectedAns,
    //           index: index,
    //         );
    //       }).toList(),
    //     ),
    //     TextButton(
    //         onPressed: onRestartQuiz, child: const Text("Restart Quiz"))
    //   ],
    // );

    // return Column(
    //   mainAxisSize: MainAxisSize.max,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     FormattedText("You Answered $correctAnsCount out of $total questions correctly!", 20, align: TextAlign.start),
    //     Column(
    //       children: questions.asMap().entries.map((entry) {
    //         int index = entry.key;
    //         var question = entry.value;
    //         return ResultOutput(
    //           question: question,
    //           selectedAns: selectedAns,
    //           index: index,
    //         );
    //       }).toList(),
    //     ),
    //     TextButton(
    //         onPressed: onRestartQuiz, child: const Text("Restart Quiz"))
    //   ],
    // );
  }
}

class ResultOutput extends StatelessWidget {
  final QuizQuestions question;
  final List<String> selectedAns;
  final int index;

  const ResultOutput(
      {required this.question,
      required this.selectedAns,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text(
            index.toString(),
            style: GoogleFonts.lato(color: Colors.white, fontSize: 12),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns children to the start (left)
          children: [
            Text(
              "${question.question}",
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 12),
            ),
            Text(
              "${question.correctAns}",
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                color: question.correctAns == selectedAns[index]
                    ? Colors.green
                    : Colors.red,
                fontSize: 12,
              ),
            ),
            Text(
              "${selectedAns[index]}",
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(color: Colors.blue, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
