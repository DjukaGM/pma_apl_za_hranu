import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class FavoritesProvider with ChangeNotifier {
  List<Restaurant> favorites = [];

  void toggleFavorite(Restaurant restaurant) {
    if (favorites.contains(restaurant)) {
      favorites.remove(restaurant);
    } else {
      favorites.add(restaurant);
    }
    notifyListeners();
  }

  bool isFavorite(Restaurant restaurant) {
    return favorites.contains(restaurant);
  }
}
