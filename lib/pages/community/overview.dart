import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class CommunityOverviewPage extends StatefulWidget {
  const CommunityOverviewPage({Key? key}) : super(key: key);

  @override
  State<CommunityOverviewPage> createState() => CommunityOverviewPageState();
}

class CommunityOverviewPageState extends State<CommunityOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return YaruPage(
      children: [
        Container(
          alignment: const Alignment(-0.9, 0),
          child: const Text(
            'The Ubuntu community',
            style: TextStyle(fontSize: 34),
          ),
        ),
        SizedBox(height: 20),
        Container(
          alignment: const Alignment(-0.86, 0),
          child: const Expanded(
            flex: 100,
            child: Text(
                'We are a meritocracy, not a democracy. That means we try to enable the people best\nequipped to lead, then we let them lead with confidence. Candidacy is contingent on\ncompetence. We optimise for signal over noise.'),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Participate',
          style: TextStyle(fontSize: 22),
        ),
        Text(
            'There are many ways you can participate in the Ubuntu community. Just find the right level or interests that works for you.'),
      ],
    );
  }
}
