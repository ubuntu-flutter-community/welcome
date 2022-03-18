import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => CommunityPageState();
}

class CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Community'),
        ),
        body: const YaruTabbedPage(
          tabTitles: [
            'Overview',
            'Canonical',
            'Code of Conduct',
            'Debian',
            'Diversity',
            'Governance',
            'Mission'
          ],
          tabIcons: [
            YaruIcons.ok,
            Icons.access_alarms_outlined,
            Icons.telegram,
            Icons.telegram,
            Icons.telegram,
            Icons.telegram,
            Icons.telegram
          ],
          views: [
            YaruPage(
              children: [
                Text(
                  'The Ubuntu community',
                  style: TextStyle(fontSize: 34),
                ),
                Text(
                    'We are a meritocracy, not a democracy. That means we try to enable the people best equipped to lead, then we let them lead with confidence. Candidacy is contingent on competence. We optimise for signal over noise.'),
                SizedBox(height: 10),
                Text(
                  'Participate',
                  style: TextStyle(fontSize: 22),
                ),
                Text('There are many ways you can participate in the Ubuntu community. Just find the right level or interests that works for you.'),
              ],
            ),
            YaruPage(
              children: [
                Text(
                  'Canonical and Ubuntu',
                  style: TextStyle(fontSize: 34),
                ),
                SizedBox(height: 40),
                Text(
                  'As the company behind the Ubuntu Project, Canonical knows Ubuntu inside out',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 40),
                Text('Ubuntu is produced by Canonical and friends. We run Ubuntu as an open project to enable others with diverse ideas to benefit from all the work we do to deliver the world’s best open platform. As a result, Ubuntu is far bigger and more interesting than anything a single company could produce.'),
                SizedBox(height: 20),
                Text('Still, Canonical is responsible for delivering six-monthly milestone releases and regular LTS releases for enterprise production use, as well as security updates, support and the entire online infrastructure for community interaction. Enterprises count on Canonical to support, secure and manage Ubuntu infrastructure and devices.'),
                SizedBox(height: 20),
                Text('With more than 500 employees in over 39 countries, the company underpins the critical infrastructure for thousands of businesses and millions of Ubuntu users around the world.'),
                SizedBox(height: 20),
                Text('Find out more on the Canonical website (THIS SHOULD BE A HYPERLINK'),
              ],
            ),
            YaruPage(
              children: [Text('Code of Conduct')],
            ),
            YaruPage(
              children: [Text('Debian')],
            ),
            YaruPage(
              children: [Text('Diversity')],
            ),
            YaruPage(
              children: [Text('Governance')],
            ),
            YaruPage(
              children: [Text('Mission')],
            ),
          ],
        ));
  }
}
