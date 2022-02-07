import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/ubuntu.png'),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: YaruColors.blue,
        child: Text('Social Media Link Row Here....'),
      ),
    );
  }
}
