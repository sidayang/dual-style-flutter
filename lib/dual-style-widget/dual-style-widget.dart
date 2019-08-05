import 'package:flutter/widgets.dart'
    show Widget, StatelessWidget, BuildContext;
import 'dart:io' show Platform;

abstract class DualStyleWidget<MaterialWidget extends Widget,
    CupertinoWidget extends Widget> extends StatelessWidget {
  MaterialWidget getMaterialWidget(BuildContext context);
  CupertinoWidget getCupertinoWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? getCupertinoWidget(context)
        : getMaterialWidget(context);
  }
}
