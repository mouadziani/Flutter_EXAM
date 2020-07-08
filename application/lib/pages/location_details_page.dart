import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/widgets/location_widget.dart';
import 'package:simple_slider/simple_slider.dart';

class LocationDetailsPage extends StatefulWidget {
  LocationDetailsPage();

  @override
  State<StatefulWidget> createState() => new _LocationDetailsPageState();
}

class _LocationDetailsPageState extends State<LocationDetailsPage> {

  final _imageUrls = [
    "https://png.pngtree.com/thumb_back/fw800/back_pic/00/03/35/09561e11143119b.jpg",
    "https://png.pngtree.com/thumb_back/fw800/back_pic/04/61/87/28586f2eec77c26.jpg",
    "https://png.pngtree.com/thumb_back/fh260/back_pic/04/29/70/37583fdf6f4050d.jpg",
    "https://ak6.picdn.net/shutterstock/videos/6982306/thumb/1.jpg"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Location details'),
      ),
      body: Container(
        child: ImageSliderWidget(
          imageUrls: _imageUrls,
          imageBorderRadius: BorderRadius.circular(10.0),
          imageHeight: 8,
        ),
      ),
//      body: Container(
//        child: Column(
//          children: <Widget>[
//            Image(
//              height: 250,
//              width: double.infinity,
//              image: NetworkImage(
//                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
//              ),
//              fit: BoxFit.fill,
//            )
//          ],
//        ),
//      ),
    );
  }
}
