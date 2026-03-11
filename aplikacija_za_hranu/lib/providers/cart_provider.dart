import 'package:flutter/material.dart';
import '../models/food_item.dart';

class CartProvider with ChangeNotifier {
  List<FoodItem> items = [];

  void addItem(FoodItem item) {
    items.add(item);
    notifyListeners();
  }

  void removeItem(FoodItem item) {
    items.remove(item);
    notifyListeners();
  }

  double get totalPrice {
    return items.fold(0, (sum, item) => sum + item.price);
  }
  
  void addMultipleItems(List<FoodItem> newItems) {
    items.addAll(newItems);
    notifyListeners();
  }

  void clearCart() {
    items.clear();
    notifyListeners();
  }
}
