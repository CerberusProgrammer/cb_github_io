import 'package:cb_github_io/content.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: ListView(children: const [
        SafeArea(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    elevation: 5,
                    child: ListTile(
                        subtitle: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(about_me_description)))))),
      ]),
    );
  }
}
