import 'package:flutter/material.dart';

class FarmerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Dashboard'),
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
              'Welcome, Farmer!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.add_circle, color: Colors.green),
                title: Text('Add New Crop'),
                subtitle: Text('List your crops for sale'),
                onTap: () {
                  // TODO: Navigate to add crop screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.list, color: Colors.blue),
                title: Text('My Crops'),
                subtitle: Text('View and manage your listings'),
                onTap: () {
                  // TODO: Navigate to my crops screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.orange),
                title: Text('Orders'),
                subtitle: Text('View incoming orders'),
                onTap: () {
                  // TODO: Navigate to orders screen
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
