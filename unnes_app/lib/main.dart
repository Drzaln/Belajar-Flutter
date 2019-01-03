import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/widgets.dart';
import 'package:unnes_app/customFont.dart';
import 'package:unnes_app/dashboard.dart';

void main() => runApp(MyApp());

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
      home: MyHomePage(title: 'ILKOM Mobile'),
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
  int _cIndex = 0;
  final _widgetOptions = [
    // DASHBOARD
    new dashboard(),

    // AKADEMIK
    Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'AKADEMIK',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Semester Genap 2018/2019',
                style: TextStyle(fontSize: 12.0),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                ),
              ),
            ],
          ),
        ],
      ),
    ),

    // JADWAL
    new Container(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new Text(
            ' JADWAL',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),

    // PROFIL
    Text('Profile'),
  ];

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Image.asset('assets/images/logo.png'),
          titleSpacing: 0.0,
          title: new Text(
            widget.title,
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              new Center(
                child: _widgetOptions.elementAt(_cIndex),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CommunityMaterialIcons.view_dashboard_outline,
                    color: Colors.green),
                title: Text('Dashboard')),
            BottomNavigationBarItem(
                icon: Icon(CommunityMaterialIcons.book_open_page_variant,
                    color: Colors.green),
                title: Text('Akademik')),
            BottomNavigationBarItem(
                icon: Icon(
                  MyFlutterApp.course,
                  color: Colors.green,
                ),
                title: Text('Jadwal')),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.graduation_hat, color: Colors.green),
                title: Text('Profile'))
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        ));
  }
}