import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  Profil({this.namaUser, this.email, this.nim});

  final avatarSize = 40.0;
  final roundPojok = 15.0;
  final String namaUser;
  final String email;
  final String nim;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'PROFILE',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              // color: Colors.yellow,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 300.0,
                    width: double.infinity,
                    // color: Colors.red,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.all(
                          Radius.circular(roundPojok),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 64.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  namaUser,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(email),
                                Text(
                                  nim,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(roundPojok),
                                      ),
                                    ),
                                    color: Colors.orange,
                                    padding: EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 8.0,
                                      right: 64.0,
                                      left: 64.0,
                                    ),
                                    onPressed: () => {},
                                    highlightColor: Colors.orange,
                                    splashColor: Colors.yellow,
                                    child: Text(
                                      'Lihat KTM',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          NetworkImage('https://avatars.io/instagram/drzaln'),
                      radius: avatarSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  new EntryItem(data[index]),
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  new Entry(
    'Biodata',
    <Entry>[
      new Entry('Section A0'),
      new Entry('Section A1'),
      new Entry('Section A2'),
    ],
  ),
  new Entry(
    'Chapter B',
    <Entry>[
      new Entry('Section B0'),
      new Entry('Section B1'),
    ],
  ),
  new Entry(
    'Chapter C',
    <Entry>[
      new Entry('Section C0'),
      new Entry('Section C1'),
      new Entry(
        'Section C2',
        <Entry>[
          new Entry('Item C2.0'),
          new Entry('Item C2.1'),
          new Entry('Item C2.2'),
          new Entry('Item C2.3'),
        ],
      ),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return new ListTile(title: new Text(root.title));
    return new ExpansionTile(
      key: new PageStorageKey<Entry>(root),
      title: new Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
