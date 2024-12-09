import 'package:flutter/material.dart';

///This is the PreGame class.
///It was used to hold the times for the gaming events held after the main conference hours.
///It works exactly like the other events, using a list of strings to hold the information
///and a scaffold to lock it in place.
class PreGame extends StatelessWidget {
  const PreGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Wednesday, Feb 8'),
            backgroundColor: const Color.fromARGB(255, 3, 48, 126),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
        ),
      ),
    );
  }
}

///Works as the initializer in a way.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

///Holds the data and text for all the sessions.
final List<Entry> data = <Entry>[
  Entry(
    '2:00 - 5:00pm: Current Board Meeting\n(Ballroom A)',
  ),
  Entry(
    '6:00 - 8:00pm: Board dinner',
  )
];

class EntryItem extends StatelessWidget {
  EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      title: Text(
        root.title,
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
