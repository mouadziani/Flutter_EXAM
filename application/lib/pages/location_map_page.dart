import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMapPage extends StatefulWidget {
  final double long;
  final double lat;

  const LocationMapPage({this.long, this.lat});

  @override
  _LocationMapPageState createState() => _LocationMapPageState();
}

class _LocationMapPageState extends State<LocationMapPage> {

  Completer<GoogleMapController> _controller = Completer();
  double _long;
  double _lat;
  final Set<Marker> _markers = {};

  @override
  void initState(){
    super.initState();
    _long = this.widget.long;
    _lat = this.widget.lat;
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(LatLng(_long, _lat).toString()),
        position: LatLng(_long, _lat),
        infoWindow: InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    print(this._lat);
    print(this._long);
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Location')
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: CameraPosition(
          target: LatLng(_long, _lat),
          zoom: 17.0,
        ),
      )
    );
  }
}
