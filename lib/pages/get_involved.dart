import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class GetInvolvedPage extends StatefulWidget {
  const GetInvolvedPage({Key? key}) : super(key: key);

  @override
  State<GetInvolvedPage> createState() => GetInvolvedPageState();
}

class GetInvolvedPageState extends State<GetInvolvedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Get Involved'),
        ),
        body: YaruPage(
          children: [
            Text('Something will go here. I promise you.'),
          ],
        ));
  }
}
