import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Doddy Rizal Novianto',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('drzaln@students.unnes.ac.id'),
                                Text(
                                  '4611417023',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  child: RaisedButton(
                                    color: Colors.orange,
                                    padding: EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 8.0,
                                      right: 16.0,
                                      left: 16.0,
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
                      radius: 80.0,
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
