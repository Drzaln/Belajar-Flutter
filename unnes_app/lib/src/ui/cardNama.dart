import 'package:flutter/material.dart';

class CardNama extends StatelessWidget {
  CardNama({this.namaUser});

  final String namaUser;
  final roundPojok = 15.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey('Card'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(roundPojok),
        ),
      ),
      child: Column(
        key: ValueKey('Column'),
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            key: ValueKey('Row'),
            children: <Widget>[
              Padding(
                key: ValueKey('Padding'),
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                /* biar bisa multiline nama */
                key: ValueKey('Expanded'),
                child: Padding(
                  key: ValueKey('Padding'),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    key: ValueKey('Column'),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Selamat datang,',
                        key: ValueKey('Text'),
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        namaUser,
                        key: ValueKey('Text'),
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
