import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => IntroductionPageState();
}

class IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Introduction'),
        ),
        body: YaruPage(
          children: [
            Text('Something will go here. I promise you.'),
          ],
        ));
  }
}
