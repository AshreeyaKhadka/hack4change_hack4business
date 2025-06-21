import 'package:flutter/material.dart';

class BuyerOrderHistoryScreen extends StatelessWidget {
  const BuyerOrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy order data (replace with real data later)
    final List<Map<String, dynamic>> orders = [
      {
        'crop': 'Tomatoes',
        'farmer': 'Farmer A',
        'quantity': '10 kg',
        'price': 'Rs. 500',
        'date': '2025-06-20',
        'status': 'Delivered'
      },
      {
        'crop': 'Potatoes',
        'farmer': 'Farmer B',
        'quantity': '5 kg',
        'price': 'Rs. 200',
        'date': '2025-06-18',
        'status': 'Delivered'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: const Icon(Icons.shopping_basket, color: Colors.green),
              title: Text(order['crop']),
              subtitle: Text(
                'From: ${order['farmer']}\nQty: ${order['quantity']} • ${order['date']}',
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(order['price'], style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(order['status'], style: const TextStyle(color: Colors.green)),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
