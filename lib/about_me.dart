import 'package:cb_github_io/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text(
            'About Me',
            style: TextStyle(
                fontSize: 56, color: Color.fromARGB(255, 106, 106, 106)),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: ListTile(
                subtitle: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(about_me_description),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
