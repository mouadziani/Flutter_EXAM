import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/models/location.dart';
import 'package:flutter_login_demo/pages/location_map_page.dart';
import 'package:flutter_login_demo/shared/widgets/vertical_divider_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationDetailsPage extends StatelessWidget {

  Location _location;

  LocationDetailsPage(this._location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Location details'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(height: 260.0),
              items: _location.images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.black12),
                      child: Image(
                        width: 160,
                        height: double.infinity,
                        image: NetworkImage(image),
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
                                      _location.title.toUpperCase(),
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
                                            (_location.price + ' ' + _location.currency).toUpperCase(),
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
                              children:
                                _location.attributes.map((attribute) =>
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(attribute,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      // VerticalDividerWidget(),
                                    ],
                                  )
                                ).toList(),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                _location.adress,
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
                                    Text(
                                        _location.phoneNumber,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white
                                        )
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  launch("tel://" + _location.phoneNumber);
                                },
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LocationMapPage(long: double.parse(_location.long), lat: double.parse(_location.lat))),
                                  );
                                },
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

