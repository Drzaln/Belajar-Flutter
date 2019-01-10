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
          Container(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    padding: EdgeInsets.all(16.0),
                    child: Text('1'),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  child: Card(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
