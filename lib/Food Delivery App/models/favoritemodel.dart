import 'package:flutter/material.dart';
import '../models/fooditems.dart';

class FavoritesModel extends ChangeNotifier {
  final List<Fooditems> _favoriteItems = [];

  List<Fooditems> get favoriteItems => _favoriteItems;

  void toggleFavorite(Fooditems item) {
    if (_favoriteItems.contains(item)) {
      _favoriteItems.remove(item);
    } else {
      _favoriteItems.add(item);
    }
    notifyListeners(); 
  }

  bool isFavorite(Fooditems item) {
    return _favoriteItems.contains(item);
  }
}



