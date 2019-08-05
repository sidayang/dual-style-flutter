import 'package:flutter/widgets.dart';
import '../../dual-style-widget/scaffold/scaffold.dart';
import '../../dual-style-widget/scaffold/top-navigation-bar.dart';

class PictureDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DualStyleTopNaviScaffold(
        topNavigationBar: DualStyleTopNavigationBar(
          title: Text('Detail'),
        ),
        body: Center(child: Text('Detail Page')));
  }
}
