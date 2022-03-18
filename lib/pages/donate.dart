import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => DonatePageState();
}

class DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Donate'),
        ),
        body: YaruPage(
          children: [
            Text('Something will go here. I promise you.'),
          ],
        ));
  }
}
