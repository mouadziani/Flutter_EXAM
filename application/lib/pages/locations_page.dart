import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/models/location.dart';
import 'package:flutter_login_demo/pages/location_form_page.dart';
import 'package:flutter_login_demo/services/authentication.dart';
import 'package:flutter_login_demo/services/location_service.dart';
import 'package:flutter_login_demo/shared/widgets/serach_appbar_widget.dart';
import 'package:flutter_login_demo/widgets/location_widget.dart';

class LocationsPage extends StatefulWidget {

  LocationsPage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {

  LocationService _locationService = LocationService();
  List<Location> _locations = [];

  @override
  void initState() {
    loadLocations();
    super.initState();
  }

  loadLocations() {
    this._locationService.getLocations().then((querySnapshot) {
      List<Location> locations = [];
      querySnapshot.documents.forEach((response) {
        print(response.data);
        locations.add(Location.fromSnapshot(response));
      });

      setState(() {
        this._locations = locations;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: SearchAppBarWidget(
          userId: widget.userId,
          auth: widget.auth,
          logoutCallback: widget.logoutCallback,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 13),
        child: ListView.builder(
          itemCount: _locations.length,
          itemBuilder: (BuildContext context, int position) {
            return LocationWidget(_locations[position]);
          }
         ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new location',
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24.0,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LocationFormPage()),
          );
        },
      ),
    );
  }
}
