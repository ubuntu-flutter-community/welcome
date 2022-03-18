import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class OpportunitiesPage extends StatefulWidget {
  const OpportunitiesPage({Key? key}) : super(key: key);

  @override
  State<OpportunitiesPage> createState() => OpportunitiesPageState();
}

class OpportunitiesPageState extends State<OpportunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opportunities'),
        ),
        body: YaruPage(
          children: [
            Text('Something will go here. I promise you.'),
          ],
        ));
  }
}
