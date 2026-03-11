import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/order.dart';

class OrdersProvider with ChangeNotifier {
  List<Order> orders = [];

  Future<void> loadOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('orders');

    if (data != null) {
      final decoded = jsonDecode(data) as List;
      orders = decoded.map((e) => Order.fromJson(e)).toList();
      notifyListeners();
    }
  }

  Future<void> addOrder(Order order) async {
    orders.add(order);

    final prefs = await SharedPreferences.getInstance();

    prefs.setString(
      'orders',
      jsonEncode(
        orders.map((e) => e.toJson()).toList(),
      ),
    );

    notifyListeners();
  }
}
