import 'package:cb_github_io/content.dart';
import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
            child: SafeArea(
                child: Card(
          elevation: 10,
          child: Ink(
            child: InkWell(
              child: Column(
                children: [
                  Expanded(child: Image.network(random)),
                  Text('Title Work 1'),
                  Text('Subtitle Work 1'),
                ],
              ),
              onTap: () {},
            ),
          ),
        ))),
      ],
    );
  }
}
