import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return ListView(
        padding: const EdgeInsets.all(5),
        children: [
          Card(
              elevation: 10,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    width: constrains.maxWidth,
                    height: constrains.maxWidth >= 600
                        ? constrains.maxHeight / 3
                        : constrains.maxHeight / 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2017/04/19/13/03/coffee-2242213_960_720.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      constrains.maxWidth >= 330
                          ? const Text(
                              'SazarCode',
                              style: TextStyle(fontSize: 64, shadows: [
                                Shadow(offset: Offset(1, 1), blurRadius: 2)
                              ]),
                            )
                          : const Text(
                              'SC',
                              style: TextStyle(fontSize: 64, shadows: [
                                Shadow(offset: Offset(1, 1), blurRadius: 2)
                              ]),
                            ),
                      constrains.maxWidth >= 600
                          ? const Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                  'Lorem ipsum dolor sit amet, consectet Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                            )
                          : const Text(''),
                    ],
                  ),
                ],
              )),
          const Text(
            'My projects',
            style: TextStyle(fontSize: 48),
          ),
          Row(
            children: [
              Card(
                child: Text('data'),
                elevation: 10,
              )
            ],
          )
        ],
      );
    });
  }
}
