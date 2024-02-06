import 'package:eco_gene_app/screens/bluetooth.dart';
import 'package:eco_gene_app/screens/informationScreen.dart';
import 'package:eco_gene_app/screens/qr1.dart';
import 'package:eco_gene_app/screens/select.dart';
import 'package:eco_gene_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BluetoothScanPage(),
    );
  }
}
