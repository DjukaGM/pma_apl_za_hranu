import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/cart_provider.dart';
import '../providers/orders_provider.dart';
import '../models/order.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final nameController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadSavedData();
  }

  Future<void> loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();

    nameController.text = prefs.getString('customer_name') ?? '';
    addressController.text = prefs.getString('customer_address') ?? '';
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('customer_name', nameController.text);
    await prefs.setString('customer_address', addressController.text);
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();
    final orders = context.read<OrdersProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Narudžbina'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Ime i prezime',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                labelText: 'Adresa',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ukupno za plaćanje: ${cart.totalPrice} RSD',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await saveData();

                await orders.addOrder(
                  Order(
                    restaurantName: 'Narudžbina',
                    items: List.from(cart.items),
                    totalPrice: cart.totalPrice,
                    customerName: nameController.text,
                    address: addressController.text,
                  ),
                );

                cart.clearCart();

                if (!context.mounted) return;

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Porudžbina uspešno sačuvana'),
                  ),
                );

                Navigator.pop(context);
              },
              child: const Text('Završi narudžbinu'),
            ),
          ],
        ),
      ),
    );
  }
}
