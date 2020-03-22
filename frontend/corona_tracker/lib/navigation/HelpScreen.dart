import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hilfe'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(
    this.title,
    [this.children = const <SubEntry>[]]
      );

  final String title;
  final List<SubEntry> children ;
}

class SubEntry {
  SubEntry(this.title, this.description);
  final String title;
  final String description;

}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Hygiene',
    <SubEntry>[
      SubEntry(
        'Wie wasche ich meine Hände richtig?',
        'Beschreibung1'
      ),
      SubEntry(
      'Was ist wichtig beim husten oder niesen?',
      'Beschreibung2'
      )
    ]
  ),
  Entry(
      'Soziale Distanzierung',
      <SubEntry>[
        SubEntry(
            'Wie passe ich mein privates und Familienleben an? ',
            'Beschreibung3'
        ),
        SubEntry(
            'Wie passe ich das an meine Arbeit an? ',
            'Beschreibung4'
        )
      ]
  ),
  Entry(
      'Home Office',
      <SubEntry>[
        SubEntry(
            'Test',
            'jaksdjalkdjakl'
        ),
      ]
  )
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: List.generate(root.children.length, (i) {
        return ExpansionTile(
          key: PageStorageKey<SubEntry>(root.children[i]),
          title: Text(root.children[i].title),
          children: <Widget>[
              new Container(
              child: Text(
                  root.children[i].description,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17
                  )
              ),
              margin: const EdgeInsets.only(top:10.0, left: 10.0, right:10.0, bottom: 10.0),
              decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              ),
            )
          ],
        );
    }));






//
//        ExpansionTile(
//          key: PageStorageKey<SubEntry>(root.subEntry),
//          title: Text(root.subEntry.title),
//          children: <Widget> [
//
//          ]
//        )
      //],
    //);
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}