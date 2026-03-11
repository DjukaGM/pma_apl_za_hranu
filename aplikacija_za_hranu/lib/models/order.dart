import 'food_item.dart';

class Order {
  final String restaurantName;
  final List<FoodItem> items;
  final double totalPrice;
  final String customerName;
  final String address;

  Order({
    required this.restaurantName,
    required this.items,
    required this.totalPrice,
    required this.customerName,
    required this.address,
  });

  Map<String, dynamic> toJson() {
    return {
      'restaurantName': restaurantName,
      'items': items.map((e) => e.toJson()).toList(),
      'totalPrice': totalPrice,
      'customerName': customerName,
      'address': address,
    };
  }

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      restaurantName: json['restaurantName'],
      items: (json['items'] as List)
          .map((e) => FoodItem.fromJson(e))
          .toList(),
      totalPrice: json['totalPrice'],
      customerName: json['customerName'],
      address: json['address'],
    );
  }
}
