class FoodItem {
  final String name;
  final double price;
  final bool isDrink;
  final String emoji;

  FoodItem({
    required this.name,
    required this.price,
    required this.isDrink,
    required this.emoji,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'isDrink': isDrink,
      'emoji': emoji,
    };
  }

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      name: json['name'],
      price: json['price'],
      isDrink: json['isDrink'],
      emoji: json['emoji'] ?? '🍽️',
    );
  }
}