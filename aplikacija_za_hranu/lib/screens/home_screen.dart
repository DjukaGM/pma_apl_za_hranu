import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/dummy_data.dart';
import '../providers/favorites_provider.dart';
import '../models/restaurant.dart';
import 'restaurant_screen.dart';
import 'favorites_screen.dart';
import 'cart_screen.dart';
import 'orders_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    List<Restaurant> filtered = restaurants.where((restaurant) {
      return restaurant.name.toLowerCase().contains(search.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Restorani'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FavoritesScreen()),
              );
            },
          ),
          IconButton(
  	    icon: const Icon(Icons.history),
  	    onPressed: () {
    	      Navigator.push(
      	        context,
      		MaterialPageRoute(
        	  builder: (_) => const OrdersScreen(),
      		),
    	      );
  	    },
	  ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Pretraga restorana',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  search = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final restaurant = filtered[index];

                return Card(
                  child: ListTile(
                    leading: Image.asset(
                      restaurant.image,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(restaurant.name),
                    subtitle: Text(
                      '${restaurant.address}\n⭐ ${restaurant.rating}',
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        context.watch<FavoritesProvider>().isFavorite(restaurant)
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      onPressed: () {
                        context
                            .read<FavoritesProvider>()
                            .toggleFavorite(restaurant);
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              RestaurantScreen(restaurant: restaurant),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
