import 'package:flutter/material.dart';

class FarmerDashboard extends StatelessWidget {
  final VoidCallback onAddCropTap;
  const FarmerDashboard({super.key, required this.onAddCropTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer Dashboard'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildCard(Icons.add_circle, 'Add Crop', 'Add a new crop',
                Colors.green, onAddCropTap),
            _buildCard(Icons.list, 'My Crops', 'View crop list', Colors.blue,
                () {
              Navigator.pushNamed(context, '/my-crops');
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(IconData icon, String title, String subtitle, Color color,
      VoidCallback onTap) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(height: 8),
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subtitle, textAlign: TextAlign.center),
        ]),
      ),
    );
  }
}
