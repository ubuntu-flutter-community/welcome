import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ubuntu_welcome/pages/community/canonical.dart';
import 'package:ubuntu_welcome/pages/community/overview.dart';
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
            // These pages arein the pages/community/ subfolder for neatness
            CommunityOverviewPage(),
            CommunityCanonicalPage(),
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
