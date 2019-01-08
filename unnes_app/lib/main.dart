import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unnes_app/viewtab.dart';
import 'package:unnes_app/navtab.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() { 
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ILKOM App',
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
    return new DefaultTabController(
      length: 4,
      child: new Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // bisa pakai image
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Image.asset('assets/images/logo.png',),
          titleSpacing: 0.0,
          title: new Text(
            widget.title,
            style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),
          ),
        ),
        body: ViewTab(),
        bottomNavigationBar: NavTab(),
      ),
    );
  }
}