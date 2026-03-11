import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/restaurant.dart';
import '../providers/cart_provider.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: ListView.builder(
        itemCount: restaurant.foods.length,
        itemBuilder: (context, index) {
          final item = restaurant.foods[index];

          return ListTile(
            leading: Text(item.emoji, style: const TextStyle(fontSize: 28)),
            title: Text(item.name),
            subtitle: Text('${item.price} RSD'),
            trailing: ElevatedButton(
              onPressed: () {
                context.read<CartProvider>().addItem(item);
              },
              child: const Text('Dodaj'),
            ),
          );
        },
      ),
    );
  }
}