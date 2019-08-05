import './dual-style-widget/scaffold/bottom-navigation-bar.dart';
import 'package:flutter/material.dart';
import './dual-style-widget/scaffold/scaffold.dart';
import './widgets/home/home.dart';
import './widgets/search/search.dart';
import './dual-style-widget/app.dart';
import './widgets/common/picture-detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DualStyleApp(
      home: DualStyleBottomNaviScaffold(
        bottomNavigationBar: DualStyleBottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Search")),
        ], tabs: [
          HomePage(),
          SearchPage(),
          HomePage()
        ]),
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/home/detail': (context) => PictureDetail(),
      },
    );
  }
}
