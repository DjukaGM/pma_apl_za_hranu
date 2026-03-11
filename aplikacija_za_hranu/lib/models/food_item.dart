class FoodItem {
  final String name;
  final double price;
  final bool isDrink;

  FoodItem({
    required this.name,
    required this.price,
    required this.isDrink,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'isDrink': isDrink,
    };
  }

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      name: json['name'],
      price: json['price'],
      isDrink: json['isDrink'],
    );
  }
}
