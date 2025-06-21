import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/farmer_dashboard.dart';
import 'screens/buyer_dashboard.dart';
import 'screens/admin_dashboard.dart';

void main() {
  runApp(FarmConnectApp());
}

class FarmConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmConnect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginScreen(),
      routes: {
        '/farmer': (context) => FarmerDashboard(),
        '/buyer': (context) => BuyerDashboard(),
        '/admin': (context) => AdminDashboard(),
      },
    );
  }
}
