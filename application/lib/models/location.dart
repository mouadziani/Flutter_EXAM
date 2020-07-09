import 'package:firebase_database/firebase_database.dart';

class Location {
  String key;
  String title;
  String adress;
  double surface;
  double price;
  int capacity;
  double long;
  double lat;
  List<String> images;
  List<String> attributes;
  String userId;


  Location(this.key, this.title, this.adress, this.surface, this.price,
      this.capacity, this.long, this.lat, this.images, this.attributes,
      this.userId);

  Location.fromSnapshot(DataSnapshot snapshot) :
        key = snapshot.key,
        title = snapshot.value["title"],
        adress = snapshot.value["adress"],
        surface = snapshot.value["surface"],
        price = snapshot.value["price"],
        capacity = snapshot.value["capacity"],
        long = snapshot.value["long"],
        lat = snapshot.value["lat"],
        images = snapshot.value["images"],
        attributes = snapshot.value["attributes"],
        userId = snapshot.value["userId"];
}
