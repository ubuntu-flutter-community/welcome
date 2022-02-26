import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: YaruPage(
        children: [
          Container(
            margin: EdgeInsets.all(50.0),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(onPressed: () {}, child: const Text('Introduction')),
                TextButton(
                    onPressed: () {}, child: const Text('Getting Started')),
                TextButton(onPressed: () {}, child: const Text('Personalize')),
                TextButton(
                    onPressed: () {}, child: const Text('Recommendations')),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: YaruColors.blue,
        child: Text('Social Media Link Row Here....'),
      ),
    );
  }
}
