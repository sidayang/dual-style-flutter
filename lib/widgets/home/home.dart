import 'package:flutter/cupertino.dart';
import '../../dual-style-widget/scaffold/scaffold.dart';
import '../../dual-style-widget/scaffold/top-navigation-bar.dart';
import './picture-list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DualStyleTopNaviScaffold(
        topNavigationBar: DualStyleTopNavigationBar(title: Text('Home')),
        body: PictureList());
  }
}
