import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders_provider.dart';
import '../providers/cart_provider.dart';
import 'checkout_screen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = context.watch<OrdersProvider>().orders;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Istorija porudžbina'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];

          return Card(
            child: ListTile(
              title: Text(order.restaurantName),
              subtitle: Text(
                order.items.map((e) => e.name).join(', '),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  context.read<CartProvider>().addMultipleItems(order.items);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CheckoutScreen(),
                    ),
                  );
                },
                child: const Text('Ponovi'),
              ),
            ),
          );
        },
      ),
    );
  }
}
