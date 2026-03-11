import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import 'checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Korpa'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];

                return ListTile(
  			title: Text(item.name),
  			subtitle: Text('${item.price} RSD'),
  			trailing: IconButton(
    				icon: const Icon(Icons.delete),
    				onPressed: () {
      					context.read<CartProvider>().removeItem(item);
    				},
  			),
		);
              },
            ),
          ),
          Text('Ukupno: ${cart.totalPrice} RSD'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CheckoutScreen(),
                ),
              );
            },
            child: const Text('Plati'),
          ),
        ],
      ),
    );
  }
}
