import 'package:flutter/material.dart';
import 'package:flutter_login_demo/models/location.dart';
import 'package:flutter_login_demo/pages/location_details_page.dart';

class LocationWidget extends StatelessWidget {

  Location _location;
  LocationWidget([this._location]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LocationDetailsPage(_location)),
        )
      },
      child: new Container(
        height: 185,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Image(
                  width: 160,
                  height: double.infinity,
                  image: NetworkImage(
                      _location.images[0]
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _location.title.toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  height: 1.3
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Divider(
                                color: Colors.black12
                            ),
                            Text(
                              _location.adress.substring(0, (_location.adress.length > 60 ? 60 : _location.adress.length)) + '...',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  height: 1.2,
                                  color: Colors.grey
                              )
                            ),
                            Divider(
                              color: Colors.white
                            ),
                            Text(
                              _location.getAttributes(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  height: 1.2,
                                  color: Colors.black26
                              )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.black12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                _location.price + " " + _location.currency + " / Mois",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Colors.blueAccent
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
