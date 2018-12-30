import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/widgets.dart';

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';

  static const IconData course = const IconData(0xe800, fontFamily: _kFontFam);
  static const IconData student = const IconData(0xe801, fontFamily: _kFontFam);
  static const IconData graduation_hat = const IconData(0xe821, fontFamily: _kFontFam);
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNNES App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'UNNES Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _cIndex = 0;
  final _widgetOptions = [
    // DASHBOARD
    new Container(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            ' DASHBOARD',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          new Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Selamat datang,',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  subtitle: Text(
                    'Doddy Rizal Novianto (4611417023)',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          new Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text(
                    'Sabtu, 29 Dec 2018',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  subtitle: Text(
                    'Jadwal kuliah hari ini:',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.format_list_numbered),
                  title: Text(
                    'Dasar-dasar Flutter',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  subtitle: Text(
                    'Lab-ILKOM',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),

    // AKADEMIK
    new Container(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 4.0, left: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'AKADEMIK',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                new Text.rich(TextSpan(
                    text: 'Semester Genap 2018/2019',
                    style: TextStyle(fontSize: 12))),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        highlightColor: Colors.amber,
                        splashColor: Colors.yellow,
                        onTap: () {
                          print('Terpencet!');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.star, color: Colors.green,size: 50,),
                              ),
                              Text('HALOHALO'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        highlightColor: Colors.amber,
                        splashColor: Colors.yellow,
                        onTap: () {
                          print('Terpencet!');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.star, color: Colors.green,size: 50,),
                              ),
                              Text('HALOHALO2'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        highlightColor: Colors.amber,
                        splashColor: Colors.yellow,
                        onTap: () {
                          print('Terpencet!');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.star, color: Colors.green,size: 50,),
                              ),
                              Text('HALOHALO3'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        highlightColor: Colors.amber,
                        splashColor: Colors.yellow,
                        onTap: () {
                          print('Terpencet!');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.star, color: Colors.green,size: 50,),
                              ),
                              Text('HALOHALO4'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),

    // JADWAL
    new Container(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            ' JADWAL',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          new Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[],
            ),
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
                icon: Icon(CommunityMaterialIcons.view_dashboard_outline, color: Colors.green),
                title: Text('Dashboard')),
            BottomNavigationBarItem(
                icon: Icon(CommunityMaterialIcons.book_open_variant, color: Colors.green),
                title: Text('Akademik')),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.course, color: Colors.green,),
                title: Text('Jadwal')),
            BottomNavigationBarItem(
                icon: Icon(CommunityMaterialIcons.account_box, color: Colors.green),
                title: Text('Profile'))
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        ));
  }
}
