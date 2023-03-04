import 'package:flutter/widgets.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SafeArea(
            child: Text(
              'About Me',
            ),
          ),
        ],
      ),
    );
  }
}
