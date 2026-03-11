import 'food_item.dart';

class Restaurant {
  final String name;
  final String image;
  final String address;
  double rating;
  final List<FoodItem> foods;

  Restaurant({
    required this.name,
    required this.image,
    required this.address,
    required this.rating,
    required this.foods,
  });
}
