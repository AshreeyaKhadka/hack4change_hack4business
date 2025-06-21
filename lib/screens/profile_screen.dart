import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, String> dummyProfile = {
    'name': 'Monika Buyer',
    'email': 'buyer@farmconnect.com',
    'phone': '9800000000',
    'address': 'Kathmandu, Nepal',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 40),
              ),
            ),
            SizedBox(height: 20),
            ...dummyProfile.entries.map((entry) => buildProfileField(entry.key, entry.value)).toList(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Text(value, style: TextStyle(fontSize: 16)),
          Divider(),
        ],
      ),
    );
  }
}
