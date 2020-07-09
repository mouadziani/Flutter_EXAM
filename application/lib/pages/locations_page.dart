import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/shared/widgets/serach_appbar_widget.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: SearchAppBarWidget(),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 13),
        child: ListView(
          children: <Widget>[
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
            LocationWidget(),
          ],
        ),
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
