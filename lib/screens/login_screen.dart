import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FarmConnect Login')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to FarmConnect',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            DropdownButtonFormField<String>(
              hint: Text('Select Role'),
              value: selectedRole,
              items: ['Farmer', 'Buyer', 'Admin'].map((role) {
                return DropdownMenuItem(value: role, child: Text(role));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedRole = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Continue'),
              onPressed: () {
                if (selectedRole == 'Farmer') {
                  Navigator.pushNamed(context, '/farmer');
                } else if (selectedRole == 'Buyer') {
                  Navigator.pushNamed(context, '/buyer');
                } else if (selectedRole == 'Admin') {
                  Navigator.pushNamed(context, '/admin');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
