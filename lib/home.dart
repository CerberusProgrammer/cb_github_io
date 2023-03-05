import 'package:cb_github_io/about_me.dart';
import 'package:cb_github_io/test.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<StatefulWidget> {
  int selectedIndex = 0;

  List<Widget> pages = [const Test(), const AboutMe()];
  List<Widget> socialMediaButtons = [
    IconButton(
        onPressed: () async {
          const url = 'https://facebook.com';
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        icon: const FaIcon(FontAwesomeIcons.facebook)),
    IconButton(
        onPressed: () async {
          const url = 'https://facebook.com';
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        icon: const FaIcon(FontAwesomeIcons.twitter)),
    IconButton(
        onPressed: () async {
          const url = 'https://facebook.com';
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        icon: const FaIcon(FontAwesomeIcons.github)),
    IconButton(
        onPressed: () async {
          const url = 'https://facebook.com';
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        icon: const FaIcon(FontAwesomeIcons.youtube))
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
                child: NavigationRail(
              elevation: 10,
              extended: constrains.maxWidth >= 600,
              trailing: constrains.maxWidth <= 600
                  ? Column(
                      children: socialMediaButtons,
                    )
                  : null,
              leading: constrains.maxWidth >= 600
                  ? Column(
                      children: [
                        Card(
                            elevation: 10,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://avatars.githubusercontent.com/u/66286300?v=4',
                                    scale: 4))),
                        Row(children: socialMediaButtons),
                      ],
                    )
                  : null,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text('Home')),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text('About Me'))
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            )),
            Expanded(
              child: pages[selectedIndex],
            )
          ],
        ),
      );
    });
  }
}
