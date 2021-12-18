import 'dart:io';

class PlaceLocation {
  final double longitude;
  final double latitude;
  final String address;

  PlaceLocation(
      {required this.address, required this.latitude, required this.longitude});
}

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  Place(
      {required this.id,
      required this.title,
      required this.image,
      required this.location});
}
