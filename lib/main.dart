import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'home.dart';

import 'l10n.dart';

void main() {
  runApp(const WelcomeApp());
}

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YaruTheme(
      builder: (context, yaru, child) {
        return MaterialApp(
          title: 'Ubuntu Welcome',
          localizationsDelegates: localizationDelegates,
          supportedLocales: supportedLocales,
          theme: yaru.theme,
          darkTheme: yaru.darkTheme,
          home:
              const HomePage(title: 'Welcome', primaryColor: YaruColors.orange),
        );
      },
    );
  }
}
