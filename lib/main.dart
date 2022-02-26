import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

import 'pages/home.dart';

import 'l10n.dart';

void main() {
  runApp(const WelcomeApp());
}

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubuntu Welcome',
      localizationsDelegates: localizationDelegates,
      supportedLocales: supportedLocales,
      theme: yaruLight,
      darkTheme: yaruDark,
      home: const HomePage(title: 'Welcome'),
    );
  }
}
