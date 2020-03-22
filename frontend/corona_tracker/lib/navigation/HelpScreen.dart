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
        'Laut Robert Koch-Institut (RKI) zählt das Händewaschen "zu den wichtigsten'
            ' Infektionspräventionsmaßnahmen" in der aktuellen Coronavirus-Krise.'
            ' Neben der körperlichen Distanz, die man nun aufgrund der'
            ' Infektionsgefahr einhalten soll, ist Händewaschen extrem wichtig'
            ' - und jeder kann es einfach und regelmäßig durchführen.'
            ' Denn das Waschen unterbricht den Übertragungsweg des Coronavirus'
            ' von den Händen zu den Schleimhäuten, beispielsweise an Mund,'
            ' Augen oder Nase. Dabei betonen führende Wissenschaftler, Ärzte und'
            ' auch Gesundheitsminister Spahn immer wieder, sich gründlich -'
            ' das bedeutet 20 bis 30 Sekunden lang - die Hände zu waschen.',
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
            'Defintion',
          'Auch räumliche Trennung oder physische Distanzierung genannt, ist eine Reihe von'
              'nicht-pharmazeutischen Maßnahmen zur Infektionskontrolle, die die'
              ' Ausbreitung einer ansteckenden Krankheit stoppen oder verlangsamen sollen.'
              'Die Maßnahmen bezwecken, den Abstand zwischen Menschen zu vergrößern'
              ' und so die Anzahl von Infektionen etwa durch Tröpfcheninfektionen'
              ' zu verringern.',
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