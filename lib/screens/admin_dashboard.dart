import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
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
              'Welcome, Admin!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.people, color: Colors.green),
                title: Text('Manage Users'),
                subtitle: Text('View and manage farmers and buyers'),
                onTap: () {
                  // TODO: Navigate to user management screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.analytics, color: Colors.blue),
                title: Text('Analytics'),
                subtitle: Text('View platform statistics'),
                onTap: () {
                  // TODO: Navigate to analytics screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.report, color: Colors.orange),
                title: Text('Reports'),
                subtitle: Text('Handle disputes and reports'),
                onTap: () {
                  // TODO: Navigate to reports screen
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.purple),
                title: Text('Settings'),
                subtitle: Text('Platform configuration'),
                onTap: () {
                  // TODO: Navigate to settings screen
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
