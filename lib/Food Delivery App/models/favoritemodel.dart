import 'package:awakened_devs_tasks/Food%20Delivery%20App/models/fooditems.dart';
import 'package:flutter/material.dart';

class FavoritesModel with ChangeNotifier {
  final List<Fooditems> _favorites = [];

  List<Fooditems> get favorites => _favorites;

  void addFavorite(Fooditems item) {
    if (!_favorites.contains(item)) {
      _favorites.add(item);
      notifyListeners();
    }
  }

  void removeFavorite(Fooditems item) {
    if (_favorites.contains(item)) {
      _favorites.remove(item);
      notifyListeners();
    }
  }
}
