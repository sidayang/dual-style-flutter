import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './dual-style-widget.dart' show DualStyleWidget;

class DualStyleApp extends DualStyleWidget<MaterialApp, CupertinoApp> {
  DualStyleApp({@required this.home, this.initialRoute, this.routes});

  final Widget home;
  final String initialRoute;
  final Map<String, Widget Function(BuildContext context)> routes;

  @override
  MaterialApp getMaterialWidget(BuildContext context) {
    return MaterialApp(
      home: this.home,
      initialRoute: this.initialRoute,
      routes: this.routes,
    );
  }

  @override
  CupertinoApp getCupertinoWidget(BuildContext context) {
    return CupertinoApp(
      home: this.home,
      initialRoute: this.initialRoute,
      routes: this.routes,
    );
  }
}
