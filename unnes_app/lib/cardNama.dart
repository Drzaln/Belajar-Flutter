import 'package:flutter/material.dart';

class CardNama extends StatelessWidget {
  CardNama({this.namaUser});

  final String namaUser;
  var roundPojok = 15.0;

  @override
  Widget build(BuildContext context) {
    return new Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(roundPojok),
        ),
      ),
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
