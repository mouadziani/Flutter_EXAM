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
          color: Colors.green,
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
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
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
                              'Vous pouvez voir L’interface graphique'
                                  .toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Divider(color: Colors.grey),
                            Text(
                                'Test test test test test test test test test test test test test test test test test test test test test test test test',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Comments (10)'),
                              Text('100 MAD'),
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
