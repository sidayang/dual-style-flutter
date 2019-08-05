import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dual-style-widget.dart';
import './bottom-navigation-bar.dart';
import './bottom-navigation-scaffold.dart';
import './top-navigation-bar.dart';
import './top-navigation-scaffold.dart';

class DualStyleBottomNaviScaffold extends DualStyleWidget<
    MaterialBottomNavigationScaffold, CupertinoBottomNavigationScaffold> {
  DualStyleBottomNaviScaffold({this.bottomNavigationBar});

  final DualStyleBottomNavigationBar bottomNavigationBar;

  @override
  MaterialBottomNavigationScaffold getMaterialWidget(BuildContext context) {
    return MaterialBottomNavigationScaffold(
        bottomNavigationBar: this.bottomNavigationBar);
  }

  @override
  CupertinoBottomNavigationScaffold getCupertinoWidget(BuildContext context) {
    return CupertinoBottomNavigationScaffold(
        bottomNavigationBar: this.bottomNavigationBar);
  }
}

class DualStyleTopNaviScaffold extends DualStyleWidget<
    MaterialTopNavigationScaffold, CupertinoTopNavigationScaffold> {
  DualStyleTopNaviScaffold({this.topNavigationBar, this.body});

  final DualStyleTopNavigationBar topNavigationBar;
  final Widget body;

  @override
  MaterialTopNavigationScaffold getMaterialWidget(BuildContext context) {
    return MaterialTopNavigationScaffold(
        topNavigationBar: this.topNavigationBar, body: this.body);
  }

  @override
  CupertinoTopNavigationScaffold getCupertinoWidget(BuildContext context) {
    return CupertinoTopNavigationScaffold(
        topNavigationBar: this.topNavigationBar, body: this.body);
  }
}
