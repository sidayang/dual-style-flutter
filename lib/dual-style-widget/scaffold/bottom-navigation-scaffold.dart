import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './bottom-navigation-bar.dart';

class MaterialBottomNavigationScaffold extends StatefulWidget {
  MaterialBottomNavigationScaffold({this.bottomNavigationBar});

  final DualStyleBottomNavigationBar bottomNavigationBar;

  @override
  _MaterialBottomNavigationScaffoldState createState() =>
      _MaterialBottomNavigationScaffoldState(
        bottomNavigationBar: this.bottomNavigationBar,
      );
}

class _MaterialBottomNavigationScaffoldState
    extends State<MaterialBottomNavigationScaffold> {
  _MaterialBottomNavigationScaffoldState({this.bottomNavigationBar});

  int _index = 0;

  final DualStyleBottomNavigationBar bottomNavigationBar;

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: false,
          child: this._index < this.bottomNavigationBar.tabs.length
              ? this.bottomNavigationBar.tabs[this._index]
              : null),
      bottomNavigationBar: BottomNavigationBar(
          items: this.bottomNavigationBar.items,
          currentIndex: _index,
          onTap: (newIndex) {
            setState(() {
              _index = newIndex;
            });
          }),
    );
  }
}

class CupertinoBottomNavigationScaffold extends StatelessWidget {
  CupertinoBottomNavigationScaffold({this.bottomNavigationBar});

  final DualStyleBottomNavigationBar bottomNavigationBar;

  @override
  CupertinoTabScaffold build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return SafeArea(
            top: false,
            child: index < this.bottomNavigationBar.tabs.length
                ? this.bottomNavigationBar.tabs[index]
                : null);
      },
      tabBar: CupertinoTabBar(
        items: this.bottomNavigationBar.items,
      ),
    );
  }
}
