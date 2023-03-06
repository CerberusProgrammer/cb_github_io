import 'package:flutter/material.dart';

class Style {
  static Widget titleCard({
    required String title,
    required String minTitle,
    String subtitle = "",
    String image = "",
    required BoxConstraints constraints,
  }) {
    return Card(
        elevation: 10,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxWidth >= 600
                  ? constraints.maxHeight / 3
                  : constraints.maxHeight / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                constraints.maxWidth >= 330
                    ? Text(
                        title,
                        style: const TextStyle(fontSize: 64, shadows: [
                          Shadow(offset: Offset(1, 1), blurRadius: 2)
                        ]),
                      )
                    : Text(
                        subtitle,
                        style: const TextStyle(fontSize: 64, shadows: [
                          Shadow(offset: Offset(1, 1), blurRadius: 2)
                        ]),
                      ),
                constraints.maxWidth >= 600
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(subtitle),
                      )
                    : const Text(''),
              ],
            ),
          ],
        ));
  }
}
