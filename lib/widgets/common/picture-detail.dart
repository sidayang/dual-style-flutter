import 'package:dual_style_flutter/dual-style-widget/button.dart';
import 'package:dual_style_flutter/dual-style-widget/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../dual-style-widget/scaffold/scaffold.dart';
import '../../dual-style-widget/scaffold/top-navigation-bar.dart';

class PictureDetail extends StatelessWidget {
  void _onPressed(BuildContext context) {
    dualStyleShowDialog(
        context: context,
        builder: (context) {
          return DualStyleDialog(
              title: Text('return to home?'),
              content: Text('return to home?'),
              actions: [
                DualStyleDialogAction(
                    child: Text('cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                DualStyleDialogAction(
                    child: Text('confirm'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return DualStyleTopNaviScaffold(
        topNavigationBar: DualStyleTopNavigationBar(
          title: Text('Detail'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text('Detail Page'),
            Builder(
              builder: (context) => DualStyleButton(
                onPressed: () {
                  _onPressed(context);
                },
                child: Text('show dialog'),
              ),
            )
          ],
        )));
  }
}
