import 'package:flutter/material.dart';

class cardNama extends StatelessWidget {
  cardNama({this.namaUser});

  final String namaUser;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                /* biar bisa multiline nama */
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Selamat datang,',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        namaUser,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        maxLines: 20,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
