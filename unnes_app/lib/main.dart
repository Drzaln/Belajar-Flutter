import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:MyUnnes/viewtab.dart';
import 'package:MyUnnes/navtab.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

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
          // bisa pakai image,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleSpacing: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: <Widget>[
                Image.asset('assets/images/logo.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.title,
                    style:
                        TextStyle(color: Colors.yellow[600], fontFamily: 'midtown',fontSize: 40),
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
