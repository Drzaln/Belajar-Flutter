import 'package:MyUnnes/src/ui/navtab.dart';
import 'package:MyUnnes/src/ui/viewtab.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ILKOM App',
      key: ValueKey('MaterialApp'),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'MyUnnes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      key: ValueKey('DefaultTabController'),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        key: ValueKey('Scaffold'),
        appBar: AppBar(
          // bisa pakai image,
          key: ValueKey('AppBar'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleSpacing: 0.0,
          title: Padding(
            key: ValueKey('Padding'),
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              key: ValueKey('Row'),
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  key: ValueKey('Image.asset'),
                ),
                Padding(
                  key: ValueKey('Padding'),
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.title,
                    key: ValueKey('Text'),
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontFamily: 'midtown',
                        fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ViewTab(),
        bottomNavigationBar: NavTab(),
      ),
    );
  }
}
