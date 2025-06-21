import 'package:flutter/material.dart';
import 'screens/farmer_dashboard.dart';
import 'screens/add_crop_screen.dart';
import 'screens/my_crops_screen.dart';

void main() {
  runApp(const FarmConnectApp());
}

class FarmConnectApp extends StatefulWidget {
  const FarmConnectApp({super.key});

  @override
  _FarmConnectAppState createState() => _FarmConnectAppState();
}

class _FarmConnectAppState extends State<FarmConnectApp> {
  final List<Map<String, dynamic>> _cropList = [];

  void _addCrop(Map<String, dynamic> crop) {
    setState(() {
      _cropList.add(crop);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmConnect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FarmerDashboard(onAddCropTap: () {
              Navigator.pushNamed(context, '/add-crop');
            }),
        '/add-crop': (context) => AddCropScreen(onAddCrop: _addCrop),
        '/my-crops': (context) => MyCropsScreen(crops: _cropList),
      },
    );
  }
}
