import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorites_provider.dart';
import 'restaurant_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<FavoritesProvider>().favorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Omiljeni restorani'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final restaurant = favorites[index];

          return ListTile(
  		title: Text(restaurant.name),
  		subtitle: Text(restaurant.address),
  		trailing: IconButton(
    			icon: const Icon(Icons.delete),
    			onPressed: () {
      				context.read<FavoritesProvider>().toggleFavorite(restaurant);
    			},
  		),
  		onTap: () {
    			Navigator.push(
      				context,
      				MaterialPageRoute(
        				builder: (_) => RestaurantScreen(restaurant: restaurant),
      				),
    			);
  		},
	);
        },
      ),
    );
  }
}
