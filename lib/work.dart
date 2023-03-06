import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      List<Widget> projects = [
        Expanded(
          child: Card(
            child: SizedBox(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://scontent.fmxl1-1.fna.fbcdn.net/v/t39.30808-6/291813399_454199063378276_6563740446080050879_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeEnA2cLaD0pomTT-S6H4HM1pfVSNqfcRoGl9VI2p9xGgS_UH9Lu2Pljy8rWYLGTBS8&_nc_ohc=4sJp1ZXZ8oYAX-zHNl7&_nc_ht=scontent.fmxl1-1.fna&oh=00_AfCVsIQrfZgfda8XM2p-INm2E57xVQiyC9OUeaVQnTuTFw&oe=6409392E',
                    fit: BoxFit.cover,
                    width: constrains.maxWidth,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Inspire Me',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'A minimal app for inspire all that persons that feels frustration.'),
                )
              ],
            )),
          ),
        ),
        Expanded(
          child: Card(
            child: SizedBox(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      'https://p7t2r7c4.stackpathcdn.com/wp-content/uploads/2020/04/bujo-doodle-with-paper-theme.jpg'),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Notes',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Add notes faster with a minimal app.'),
                )
              ],
            )),
          ),
        ),
        Expanded(
          child: Card(
            child: SizedBox(
                child: Column(
              children: const [Text('Weight Tracker')],
            )),
          ),
        ),
      ];

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
                                  '"Programming is the fuel that powers our digital world, and coffee is the fuel that powers the programmers behind it. With a keyboard in one hand and a cup of coffee in the other, we have the power to bring our ideas to life and shape the future of technology."'),
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
          constrains.maxWidth >= 600
              ? Row(
                  children: projects,
                )
              : projects[0],
        ],
      );
    });
  }
}
