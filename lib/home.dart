import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pages/community.dart';
import 'pages/features.dart';
import 'pages/get_involved.dart';
import 'pages/getting_started.dart';
import 'pages/introduction.dart';
import 'pages/opportunities.dart';
import 'pages/recommendations.dart';
import 'pages/donate.dart';
import 'pages/gaming.dart';

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
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.ease);

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
                  applicationVersion: '22.04-devel',
                  applicationIcon: const Icon(YaruIcons.ubuntu_logo),
                  applicationLegalese: 'GNU General Public License v3.0');
            },
          ),
        ],
        title: Text(widget.title),
      ),
      body: YaruPage(
        children: [
          Center(
              child: RotationTransition(
                  turns: _animation,
                  child: ClipOval(
                      child: Image(
                          image: const AssetImage('assets/ubuntu.png'),
                          color: widget.primaryColor,
                          colorBlendMode: BlendMode.color)))),
          const SizedBox(height: 100),
          YaruBanner(
            fallbackIconData: YaruIcons.star_filled,
            name: "Introduction",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const IntroductionPage()));
            },
            summary: "The Ubuntu project, explained.",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.go_next,
            name: "Getting Started",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GettingStartedPage()));
            },
            summary:
                "Nothing to wait for - get started with your new operating system!",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.view,
            name: "Features",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeaturesPage()));
            },
            summary: "What Ubuntu has to offer.",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.radio_button_checked,
            name: "Recommendations",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RecommendationsPage()));
            },
            summary: "How you can make the most out of Ubuntu.",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.games,
            name: "Gaming",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GamingPage()));
            },
            summary: "You can game on Ubuntu too! 1v1?",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.accessibility,
            name: "Community",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CommunityPage()));
            },
            summary:
                "Ubuntu governance is ran by the Ubuntu community - free and open to all.",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.office,
            name: "Get Involved",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GetInvolvedPage()));
            },
            summary:
                "See something that is missing? Want to fix a bug? We are always looking for new people!",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.app_grid,
            name: "Opportunities",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpportunitiesPage()));
            },
            summary:
                "Explore the many opportunities Ubuntu and its community can bring.",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
          YaruBanner(
            fallbackIconData: YaruIcons.heart,
            name: "Donate",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DonatePage()));
            },
            summary:
                "A little kindness, and a little consideration can make all the difference.",
            summaryTextOverflow: TextOverflow.visible,
            surfaceTintColor: YaruColors.orange,
          ),
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
                    if (!await launch('https://www.twitter.com/ubuntu/')) {
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
                    if (!await launch('https://www.reddit.com/r/Ubuntu/')) {
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
