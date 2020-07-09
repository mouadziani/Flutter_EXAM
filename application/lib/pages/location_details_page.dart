import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/shared/widgets/vertical_divider_widget.dart';

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
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(height: 260.0),
              items: [1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image(
                        width: 160,
                        height: double.infinity,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTY4qPH15DlLAL6qwyZSUF0JeMyEFg1vCE7Nw&usqp=CAU'
                          // 'assets/flutter-icon.png'
                        ),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.grey,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    flex: 3,
                                    child: Text(
                                      'Vous pouvez voir L’interface  L’interface  L’interface '
                                          .toUpperCase(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        height: 1.4,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Flexible(
                                      flex: 1,
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '1000.00 DH'.toUpperCase(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                height: 1.3,
                                                color: Colors.blueAccent),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'Mois'.toUpperCase(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              height: 1.7,
                                              color: Colors.red,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('WIFI',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                VerticalDividerWidget(),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('2 Roms',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                VerticalDividerWidget(),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('2 Roms',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                VerticalDividerWidget(),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('2 M°',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Vous pouvez voir L’interface interface gL’interface gL’interface gL’interface gL’interface gL’interface gL’interface graphique Vous pouvez voir L’interface graphique Vous pouvez voir L’interface graphique Vous pouvez voir L’interface graphique',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 280,
                              child: RaisedButton(
                                padding: EdgeInsets.all(12),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                color: Colors.blueAccent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 15.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('+212 677 095 298',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white))
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              width: 90,
                              child: RaisedButton(
                                padding: EdgeInsets.all(12),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                color: Colors.deepOrangeAccent,
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
