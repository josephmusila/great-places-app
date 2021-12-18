import 'package:flutter/widgets.dart';
import "../models/model.dart";

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  
}
