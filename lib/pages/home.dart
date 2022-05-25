import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'community.dart';
import 'features.dart';
import 'get_involved.dart';
import 'getting_started.dart';
import 'introduction.dart';
import 'opportunities.dart';
import 'recommendations.dart';
import 'donate.dart';
import 'gaming.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title, required this.primaryColor})
      : super(key: key);

  final String title;
  final Color primaryColor;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.ease);

  @override
  void initState() {
    super.initState();
    animate();
  }

  void animate() async {
    await _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(YaruIcons.information),
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationName: 'Ubuntu Welcome',
                  applicationVersion: '22.04',
                  applicationIcon: const Icon(YaruIcons.ubuntu_logo),
                  applicationLegalese: 'GNU General Public License v3.0');
            },
          ),
        ],
        title: Text(widget.title),
      ),
      body: YaruPage(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Welcome to the 22.04 Jammy Jellyfish!',
                textAlign: TextAlign.start),
          ),
          Center(
              child: RotationTransition(
                turns: _animation,
                  child: ClipOval(
                  child: Image(
                      image: const AssetImage('assets/ubuntu.png'),
                      color: widget.primaryColor,
                      colorBlendMode: BlendMode.color)))),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroductionPage()));
                  },
                  child: Text('Introduction'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GettingStartedPage()));
                  },
                  child: Text('Getting Started'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeaturesPage()));
                  },
                  child: Text('Features'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecommendationsPage()));
                  },
                  child: Text('Recommendations'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GamingPage()));
                  },
                  child: Text('Gaming'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CommunityPage()));
                  },
                  child: Text('Community'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GetInvolvedPage()));
                  },
                  child: Text('Get Involved'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OpportunitiesPage()));
                  },
                  child: Text('Opportunities'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DonatePage()));
                  },
                  child: Text('Donate'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.primaryColor))),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: YaruColors.coolGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Tooltip(
              message: 'Twitter',
              child: IconButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://www.twitter.com/ubuntu/')) {
                      throw 'Could not open Twitter Page';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.twitter)),
              waitDuration: const Duration(seconds: 1),
            ),
            Tooltip(
              message: 'Facebook',
              child: IconButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://www.facebook.com/ubuntulinux/')) {
                      throw 'Could not open Facebook Page';
                    }
                  },
                  icon: const Icon(Icons.facebook)),
              waitDuration: const Duration(seconds: 1),
            ),
            Tooltip(
              message: 'Reddit',
              child: IconButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://www.reddit.com/r/Ubuntu/')) {
                      throw 'Could not open Reddit Page';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.reddit)),
              waitDuration: const Duration(seconds: 1),
            ),
            Tooltip(
              message: 'YouTube',
              child: IconButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://www.youtube.com/c/UbuntuOS/videos')) {
                      throw 'Could not open YouTube Page';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.youtube)),
              waitDuration: const Duration(seconds: 1),
            ),
            Tooltip(
              message: 'Telegram',
              child: IconButton(
                  onPressed: () async {
                    if (!await launch('https://t.me/ubuntu')) {
                      throw 'Could not open Telegram Page';
                    }
                  },
                  icon: const Icon(Icons.telegram)),
              waitDuration: const Duration(seconds: 1),
            ),
            Tooltip(
                message: 'Libera IRC',
                child: IconButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://wiki.ubuntu.com/IRC/ChannelList')) {
                      throw 'Could not open IRC channel list Page';
                    }
                  },
                  icon: const Icon(Icons.chat),
                ),
                waitDuration: const Duration(seconds: 1)),
            Tooltip(
              message: 'LinkedIn',
              child: IconButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://www.linkedin.com/company/234280')) {
                      throw 'Could not open LinkedIn Page';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.linkedin)),
              waitDuration: const Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
