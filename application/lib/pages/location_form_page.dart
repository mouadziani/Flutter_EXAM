import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/models/location.dart';
import 'package:flutter_login_demo/services/location_service.dart';
import 'package:image_picker/image_picker.dart';

class LocationFormPage extends StatefulWidget {
  @override
  _LocationFormPageState createState() => _LocationFormPageState();
}

class _LocationFormPageState extends State<LocationFormPage> {
  final _formKey = new GlobalKey<FormState>();
  LocationService _locationService = LocationService();

  String _title;
  String _adress;
  String _price;
  String _currency;
  String _long;
  String _lat;
  String _phoneNumber;
  String _attributes;
  List<String> _images = [];
  File _image;

  Widget showTitleInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.all(20),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          hintText: 'Title',
        ),
        validator: (value) => value.isEmpty ? 'Title can\'t be empty' : null,
        onChanged: (value) => _title = value.trim(),
      ),
    );
  }
  Widget showAdressInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 2,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.all(20),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          hintText: 'Adress',
        ),
        validator: (value) => value.isEmpty ? 'Adress can\'t be empty' : null,
        onChanged: (value) => _adress = value.trim(),
      ),
    );
  }
  Widget showPriceInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Price',
              ),
              validator: (value) => value.isEmpty ? 'Price can\'t be empty' : null,
              onChanged: (value) => _price = value.trim().toString(),
            ),
          ),
          Container(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Currency',
              ),
              validator: (value) => value.isEmpty ? 'Currency can\'t be empty' : null,
              onChanged: (value) => _currency = value.trim(),
            ),
          )
        ],
      ),
    );
  }
  Widget showCoordinatesInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Longitude',
              ),
              validator: (value) => value.isEmpty ? 'Longitude can\'t be empty' : null,
              onChanged: (value) => _long = value.trim(),
            ),
          ),
          Container(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Latitude',
              ),
              validator: (value) => value.isEmpty ? 'Latitude can\'t be empty' : null,
              onChanged: (value) => _lat = value.trim(),
            ),
          )
        ],
      ),
    );
  }
  Widget showPhoneNumberInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.phone,
        autofocus: false,
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.all(20),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          hintText: 'Phone Number',
        ),
        validator: (value) => value.isEmpty ? 'Phone Number can\'t be empty' : null,
        onChanged: (value) => _phoneNumber = value.trim(),
      ),
    );
  }
  Widget showAttributesInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 2,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.all(20),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          hintText: 'Attributes',
        ),
        validator: (value) => value.isEmpty ? 'Attributes can\'t be empty' : null,
        onChanged: (value) => _attributes = value.trim(),
      ),
    );
  }
  Widget showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
        child: SizedBox(
          height: 50.0,
          child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)),
            color: Colors.red,
            child: new Text('Save',
                style: new TextStyle(fontSize: 20.0, color: Colors.white)),
            onPressed: () {
              saveLocation();
              //saveLocation();
            },
          ),
        )
    );
  }

  saveLocation() async {
    String fileName = _image.path;
    StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    String imageUrl = await taskSnapshot.ref.getDownloadURL();
    List<String> images = new List<String>();
    images.add(imageUrl);
    this._images = images;

    Location location = Location(_title, _adress, _price, _currency,
        _long, _lat, _attributes.split(','), _images);

    this._locationService.createLocation(location);
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new offer'),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 200,
                child: GestureDetector(
                  child: (_image!=null)?Image.file(
                    _image,
                    fit: BoxFit.fill,
                  ):Image.network(
                    "https://uae.microless.com/cdn/no_image.jpg",
                    fit: BoxFit.fill,
                  ),
                  onTap: () {
                    getImage();
                  },
                )
              ),
              Divider(),
              showTitleInput(),
              showPriceInput(),
              showAdressInput(),
              showCoordinatesInput(),
              showPhoneNumberInput(),
              showAttributesInput(),
              showPrimaryButton()
            ],
          ),
        ),
      ),
    );
  }
}
