import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(FuelManagementApp());
}

class FuelManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fuel Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
