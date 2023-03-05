import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  Widget toList() {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: ListTile(
            title: Text('Title of the Work $index'),
            subtitle: Text('Subtitle of the Work $index'),
            onTap: () {},
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(2),
          child: Text(
            'My projects',
            style: TextStyle(
                fontSize: 56, color: Color.fromARGB(255, 106, 106, 106)),
          ),
        ),
        Expanded(
            child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                title: Text('Title of the Work $index'),
                subtitle: Text('Subtitle of the Work $index'),
                onTap: () {},
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
        ))
      ],
    ));
  }
}
