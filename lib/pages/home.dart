import 'package:flutter/material.dart';
import 'package:ubuntu_welcome/pages/community.dart';
import 'package:ubuntu_welcome/pages/features.dart';
import 'package:ubuntu_welcome/pages/get_involved.dart';
import 'package:ubuntu_welcome/pages/getting_started.dart';
import 'package:ubuntu_welcome/pages/introduction.dart';
import 'package:ubuntu_welcome/pages/opportunities.dart';
import 'package:ubuntu_welcome/pages/recommendations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'donate.dart';
import 'gaming.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: YaruPage(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Welcome to the 22.04 Jammy Jellyfish!',
                textAlign: TextAlign.start),
          ),
          const Center(
            child: Image(image: AssetImage('assets/ubuntu.png')),
          ),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
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
                          MaterialStateProperty.all(YaruColors.ubuntuOrange))),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: YaruColors.coolGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                onPressed: () async {
                  if (!await launch('https://www.facebook.com/ubuntulinux/')) {
                    throw 'Could not open Facebook Page';
                  }
                },
                icon: const Icon(Icons.facebook)),
            IconButton(
                onPressed: () async {
                  if (!await launch('https://t.me/ubuntu')) {
                    throw 'Could not open Telegram Page';
                  }
                },
                icon: const Icon(Icons.telegram))
          ],
        ),
      ),
    );
  }
}
