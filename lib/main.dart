import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubuntu Welcome',
      theme: yaruLight,
      darkTheme: yaruDark,
      home: const MyHomePage(title: 'Welcome'),
    );
  }
}
