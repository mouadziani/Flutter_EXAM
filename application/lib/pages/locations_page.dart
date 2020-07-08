import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/widgets/location_widget.dart';

class LocationsPage extends StatefulWidget {
  LocationsPage();

  @override
  State<StatefulWidget> createState() => new _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter login demo'),
      ),
      body: ListView(
          children: <Widget>[
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new location',
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24.0,
        ),
      ),
    );
  }
}
