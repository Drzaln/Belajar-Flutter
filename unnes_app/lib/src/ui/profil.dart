import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Profil extends StatelessWidget {
  Profil({this.namaUser, this.email, this.nim});

  final avatarSize = 40.0;
  final roundPojok = 15.0;
  final String namaUser;
  final String email;
  final String nim;

  @override
  Widget build(BuildContext context) {
    double width, height, gambar, profil, pemisah, tList, lList, gList;
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      width = MediaQuery.of(context).size.width * 0.25;
      height = MediaQuery.of(context).size.height * 0.25;
      gambar = MediaQuery.of(context).size.width * 0.13;
    } else {
      width = MediaQuery.of(context).size.width * 0.97;
      height = MediaQuery.of(context).size.height * 0.10;
      gambar = MediaQuery.of(context).size.width * 0.17;
      profil = MediaQuery.of(context).size.height * 0.38;
      pemisah = MediaQuery.of(context).size.height * 0.40;
      tList = MediaQuery.of(context).size.height * 0.32;
      lList = MediaQuery.of(context).size.width * 0.95;
      gList  = MediaQuery.of(context).size.height * 0.50;
    }

    return new Container(
      key: ValueKey('Container'),
      padding: EdgeInsets.all(10.0),
      child: Column(
        key: ValueKey('Column'),
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'PROFILE',
            key: ValueKey('Text'),
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            key: ValueKey('Expanded'),
            child: Container(
              //color: Colors.teal,
              height: profil,
              width: width,
              child: Stack(
                key: ValueKey('Stack'),
                fit: StackFit.loose,
                overflow: Overflow.visible,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    key: ValueKey('Container'),
                    height: height,
                    width: double.infinity,
                    //color: Colors.green,
                  ),
                  Positioned(
                    key: ValueKey('Positioned'),
                    top: height,
                    child: Container(
                      key: ValueKey('Container'),
                      //color: Colors.yellow,
                      width: width,
                      child: Card(
                        key: ValueKey('Card'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(roundPojok),
                          ),
                        ),
                        child: Container(
                          key: ValueKey('Container'),
                          child: Column(
                            key: ValueKey('Column'),
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                key: ValueKey('Padding'),
                                padding:
                                    EdgeInsets.only(top: height, bottom: 8),
                                child: Column(
                                  key: ValueKey('Column'),
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      namaUser,
                                      key: ValueKey('Text'),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(email,key: ValueKey('Text'),),
                                    Text(
                                      nim,
                                      key: ValueKey('Text'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    RaisedButton(
                                      key: ValueKey('RaisedButton'),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusDirectional.all(
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
                                      onPressed: () {
                                        print('tes');
                                      },
                                      highlightColor: Colors.yellow[700],
                                      splashColor: Colors.yellow,
                                      child: Text(
                                        'Lihat KTM',
                                        key: ValueKey('Text'),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    key: ValueKey('Positioned'),
                    top: 0.0,
                    child: CircleAvatar(
                      key: ValueKey('CirlceAvatar'),
                      backgroundColor: Colors.white,
                      backgroundImage: CachedNetworkImageProvider(
                          'https://avatars.io/instagram/drzaln'),
                      radius: gambar,
                    ),
                  ),
                  Positioned(
                    key: ValueKey('Positioned'),
                    top: pemisah,
                    height: gList,
                    child: Container(
                      key: ValueKey('Container'),
                      //color: Colors.red,
                      width: lList,
                      height: tList,
                      child: ListView.builder(
                        key: ValueKey('ListView.builder'),
                        physics: BouncingScrollPhysics(),
                        addAutomaticKeepAlives: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) =>
                            new EntryItem(data[index]),
                        itemCount: data.length,
                      ),
                    ),
                  ),
                ],
              ),
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
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
