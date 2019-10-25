import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import './dual-style-widget.dart' show DualStyleWidget;

Future dualStyleShowDialog(
    {@required BuildContext context,
    @required Widget Function(BuildContext) builder}) {
  if (Platform.isIOS) {
    return showCupertinoDialog(
      context: context,
      builder: builder,
    );
  } else {
    return showDialog(
      context: context,
      builder: builder,
    );
  }
}

class DualStyleDialogAction
    extends DualStyleWidget<FlatButton, CupertinoDialogAction> {
  DualStyleDialogAction({@required this.onPressed, @required this.child});

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
  CupertinoDialogAction getCupertinoWidget(BuildContext context) {
    return CupertinoDialogAction(
      onPressed: this.onPressed,
      child: this.child,
    );
  }
}

class DualStyleDialog
    extends DualStyleWidget<AlertDialog, CupertinoAlertDialog> {
  DualStyleDialog(
      {@required this.title, @required this.content, @required this.actions});

  final Widget title;
  final Widget content;
  final List<DualStyleDialogAction> actions;

  @override
  AlertDialog getMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: this.title,
      content: this.content,
      actions: this.actions,
    );
  }

  @override
  CupertinoAlertDialog getCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: this.title,
      content: this.content,
      actions: this.actions,
    );
  }
}
