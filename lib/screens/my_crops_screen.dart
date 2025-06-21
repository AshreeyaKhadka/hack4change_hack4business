import 'package:flutter/material.dart';

class MyCropsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> crops;

  const MyCropsScreen({super.key, required this.crops});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Crops')),
      body: crops.isEmpty
          ? const Center(child: Text('No crops added yet.'))
          : ListView.builder(
              itemCount: crops.length,
              itemBuilder: (context, index) {
                final crop = crops[index];
                return ListTile(
                  leading: const Icon(Icons.eco),
                  title: Text(crop['name']),
                  subtitle: Text(
                      'Quantity: ${crop['quantity']} kg\nPrice: Rs. ${crop['price']} per kg'),
                );
              },
            ),
    );
  }
}
