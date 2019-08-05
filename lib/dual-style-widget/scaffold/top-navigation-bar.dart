import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dual-style-widget.dart' show DualStyleWidget;

class DualStyleTopNavigationBar
    extends DualStyleWidget<AppBar, CupertinoNavigationBar> {
  DualStyleTopNavigationBar({this.title});
  final Widget title;

  @override
  AppBar getMaterialWidget(BuildContext context) {
    return AppBar(
      title: this.title,
    );
  }

  @override
  CupertinoNavigationBar getCupertinoWidget(BuildContext context) {
    return CupertinoNavigationBar(
      middle: this.title,
    );
  }
}
