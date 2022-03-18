import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class GamingPage extends StatefulWidget {
  const GamingPage({Key? key}) : super(key: key);

  @override
  State<GamingPage> createState() => GamingPageState();
}

class GamingPageState extends State<GamingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gaming'),
        ),
        body: YaruPage(
          children: [
            Text('Something will go here. I promise you.'),
          ],
        ));
  }
}
