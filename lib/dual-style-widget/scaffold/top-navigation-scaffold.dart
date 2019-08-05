import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './top-navigation-bar.dart';

class MaterialTopNavigationScaffold extends StatelessWidget {
  MaterialTopNavigationScaffold({this.topNavigationBar, this.body});

  final DualStyleTopNavigationBar topNavigationBar;
  final Widget body;

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar.getMaterialWidget(context),
      body: this.body,
    );
  }
}

class CupertinoTopNavigationScaffold extends StatelessWidget {
  CupertinoTopNavigationScaffold({this.topNavigationBar, this.body});

  final DualStyleTopNavigationBar topNavigationBar;
  final Widget body;

  @override
  CupertinoPageScaffold build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: topNavigationBar.getCupertinoWidget((context)),
        child: SafeArea(bottom: false, child: this.body));
  }
}
