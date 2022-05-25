import 'package:flutter/material.dart';
import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class CommunityCanonicalPage extends StatefulWidget {
  const CommunityCanonicalPage({Key? key}) : super(key: key);

  @override
  State<CommunityCanonicalPage> createState() => CommunityCanonicalPageState();
}

class CommunityCanonicalPageState extends State<CommunityCanonicalPage> {
  @override
  Widget build(BuildContext context) {
    return YaruPage(
      children: [
        Container(
          alignment: const Alignment(-0.9, 0),
          child: const Text(
            'Canonical and Ubuntu',
            style: TextStyle(fontSize: 34),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'As the company behind the Ubuntu Project, Canonical knows Ubuntu inside out',
          style: TextStyle(fontSize: 22, color: YaruColors.warmGrey),
        ),
        const SizedBox(height: 20),
        Text(
            'Ubuntu is produced by Canonical and friends. We run Ubuntu as an open project to enable others with diverse ideas to benefit from all the work we do to deliver the world’s best open platform. As a result, Ubuntu is far bigger and more interesting than anything a single company could produce.'),
        SizedBox(height: 20),
        Text(
            'Still, Canonical is responsible for delivering six-monthly milestone releases and regular LTS releases for enterprise production use, as well as security updates, support and the entire online infrastructure for community interaction. Enterprises count on Canonical to support, secure and manage Ubuntu infrastructure and devices.'),
        SizedBox(height: 20),
        Text(
            'With more than 500 employees in over 39 countries, the company underpins the critical infrastructure for thousands of businesses and millions of Ubuntu users around the world.'),
        SizedBox(height: 20),
        Text(
            'Find out more on the Canonical website (THIS SHOULD BE A HYPERLINK)'),
      ],
    );
  }
}
