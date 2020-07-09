import 'package:flutter/material.dart';
import 'package:flutter_login_demo/pages/location_details_page.dart';

class LocationWidget extends StatefulWidget {
  LocationWidget();

  @override
  State<StatefulWidget> createState() => new _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LocationDetailsPage()),
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTY4qPH15DlLAL6qwyZSUF0JeMyEFg1vCE7Nw&usqp=CAU'
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
                          children: <Widget>[
                            Text(
                              'Vous pouvez voir L’interface graphique'.toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                height: 1.3
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Divider(
                              color: Colors.grey
                            ),
                            Text(
                                "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est contenant du sens est ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Colors.grey
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
                              top: BorderSide(width: 1, color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                  '100 MAD / Mois',
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
