import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/screens/select.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QRScannerScreen extends StatefulWidget {
  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  String _scanResult = 'Unknown';

  @override
  void initState() {
    super.initState();
    // Call the method to start scanning when the screen is loaded
    _startScanning();
  }

  Future<void> _startScanning() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      debugPrint(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanResult = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Scanned Barcode: $_scanResult',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Spacer(), // Add a spacer to push the button to the bottom
          CustomButton(
              buttonText: "Stop",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectionScreen(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
