import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './dual-style-widget.dart' show DualStyleWidget;

class DualStyleButton extends DualStyleWidget<FlatButton, CupertinoButton> {
  DualStyleButton({@required this.onPressed, @required this.child});

  final Function onPressed;
  final Widget child;

  @override
  FlatButton getMaterialWidget(BuildContext context) {
    return FlatButton(
      onPressed: this.onPressed,
      child: this.child,
    );
  }

  @override
  CupertinoButton getCupertinoWidget(BuildContext context) {
    return CupertinoButton(
      onPressed: this.onPressed,
      child: this.child,
    );
  }
}
