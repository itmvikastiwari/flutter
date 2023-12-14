import 'package:flutter/material.dart';
import 'package:quiz_app/start_btn.dart';

import 'home_img.dart';
import 'home_text.dart';

const List<Color> colors = [
  Color.fromARGB(255, 0, 0, 80),
  Color.fromARGB(255, 88, 43, 98)
];

class Home extends StatefulWidget {

  const Home(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  State<StatefulWidget> createState() {
    return _HomeState(switchScreen);
  }
}

class _HomeState extends State<Home>{

  final void Function() switchScreen ;

  _HomeState(this.switchScreen);


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const HomeImg(),
          const SizedBox(height: 20),
          const HomeText(),
          const SizedBox(height: 10),
          StartBtn(switchScreen)
        ])
    );
  }

}
