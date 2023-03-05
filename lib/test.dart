import 'package:cb_github_io/content.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
            child: Card(
          elevation: 10,
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2017/04/19/13/03/coffee-2242213_960_720.jpg',
                  ),
                )),
              ),
            ),
          ]),
        )),
        Text('My projects'),
      ],
    );
  }
}
