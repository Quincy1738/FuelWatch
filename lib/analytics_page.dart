import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  final double totalRevenue;

  const AnalyticsPage({super.key, required this.totalRevenue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Today's Analytics")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.show_chart, size: 60, color: Colors.blue),
            SizedBox(height: 16),
            Text("Total Revenue Today", style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text("₹${totalRevenue.toStringAsFixed(2)}", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
