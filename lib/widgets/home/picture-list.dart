import 'package:flutter/material.dart';
import '../common/Picture-cell.dart';

class PictureList extends StatefulWidget {
  @override
  _PictureListState createState() => _PictureListState();
}

class _PictureListState extends State<PictureList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) => index % 2 == 0
          ? Row(children: [
              Text(index.toString()),
              PictureCell(type: EType.twoPictures)
            ])
          : Row(children: [
              Text(index.toString()),
              PictureCell(type: EType.singlePicture)
            ]),
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}
