import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum EType { singlePicture, twoPictures }

class PictureCell extends StatefulWidget {
  PictureCell({@required this.type});
  final EType type;
  @override
  _PictureCellState createState() => _PictureCellState(type: this.type);
}

class _PictureCellState extends State<PictureCell> {
  _PictureCellState({@required this.type});
  final EType type;

  void handleTapPicture() {
    print('213');
    Navigator.pushNamed(context, '/home/detail');
  }

  @override
  Widget build(BuildContext context) {
    switch (this.type) {
      case EType.singlePicture:
        return GestureDetector(
          onTap: handleTapPicture,
          child: Row(
            children: <Widget>[
              Image.asset("lib/widgets/common/lake.jpg",
                  width: 130, height: 130, fit: BoxFit.cover),
              Column(children: [Text('Picture Name'), Text('Picture Name')]),
            ],
          ),
        );
      case EType.twoPictures:
        return Row(
          children: <Widget>[
            GestureDetector(
              onTap: handleTapPicture,
              child: Column(children: [
                Image.asset("lib/widgets/common/lake.jpg",
                    width: 100, height: 100, fit: BoxFit.cover),
                Text('Picture Name')
              ]),
            ),
            GestureDetector(
              onTap: handleTapPicture,
              child: Column(children: [
                Image.asset("lib/widgets/common/lake.jpg",
                    width: 100, height: 100, fit: BoxFit.cover),
                Text('Picture Name')
              ]),
            ),
          ],
        );
      default:
        return null;
    }
  }
}
