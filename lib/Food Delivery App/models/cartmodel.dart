import 'package:flutter/material.dart';

import 'fooditems.dart';

class CartModel with ChangeNotifier {
  final List<Fooditems> _items = [];

  List<Fooditems> get items => _items;

  void addItem(Fooditems item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Fooditems item) {
    _items.remove(item);
    notifyListeners();
  }
}
