import 'package:flutter/material.dart';

class BuyerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buyer Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Buyer!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.search, color: Colors.green),
                title: Text('Browse Crops'),
                subtitle: Text('Find fresh produce from local farmers'),
                onTap: () {
                  // TODO: Navigate to browse crops screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.blue),
                title: Text('My Cart'),
                subtitle: Text('View items in your cart'),
                onTap: () {
                  // TODO: Navigate to cart screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.history, color: Colors.orange),
                title: Text('Order History'),
                subtitle: Text('View your past orders'),
                onTap: () {
                  // TODO: Navigate to order history screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.purple),
                title: Text('Profile'),
                subtitle: Text('Manage your profile'),
                onTap: () {
                  // TODO: Navigate to profile screen
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
