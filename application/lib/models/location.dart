import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class Location {
  String key;
  String title;
  String adress;
  String phoneNumber;
  String surface;
  String price;
  String currency;
  String capacity;
  String long;
  String lat;
  List<dynamic> images;
  List<dynamic> attributes;
  String userId;


  Location(this.key, this.title, this.adress, this.surface, this.price, this.currency,
    this.capacity, this.long, this.lat, this.images, this.attributes,
    this.userId);

  Location.fromSnapshot(snapshot) :
      title = snapshot.data["title"],
      adress = snapshot.data["adress"],
      phoneNumber = snapshot.data["phoneNumber"],
      surface = snapshot.data["surface"].toString(),
      price = snapshot.data["price"].toString(),
      currency = snapshot.data["currency"],
      capacity = snapshot.data["capacity"].toString(),
      long = snapshot.data["long"],
      lat = snapshot.data["lat"],
      images = snapshot.data["images"],
      attributes = snapshot.data["attributes"],
      userId = snapshot.data["userId"];

  getAttributes() {
    return this.attributes.join(', ');
  }

  @override
  String toString() {
    return 'Location{key: $key, title: $title, adress: $adress, surface: $surface, price: $price, capacity: $capacity, long: $long, lat: $lat, images: $images, attributes: $attributes, userId: $userId}';
  }
}
