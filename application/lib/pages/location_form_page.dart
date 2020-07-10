import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationFormPage extends StatefulWidget {
  @override
  _LocationFormPageState createState() => _LocationFormPageState();
}

class _LocationFormPageState extends State<LocationFormPage> {
  final _formKey = new GlobalKey<FormState>();

  String _title;
  String _adress;
  double _price;
  String _currency;

  Widget showTitleInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
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
        onSaved: (value) => _title = value.trim(),
      ),
    );
  }
  Widget showAdressInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 3,
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
        onSaved: (value) => _adress = value.trim(),
      ),
    );
  }

  Widget showPriceInput() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: new TextFormField(
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
            onSaved: (value) => _price = double.parse(value.trim()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: new DropdownButton<String>(
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (_) {
              print('');
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new location'),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              showTitleInput(),
              showAdressInput(),
              showPriceInput(),
              showTitleInput(),
              showTitleInput(),
            ],
          ),
        ),
      ),
    );
  }
}
