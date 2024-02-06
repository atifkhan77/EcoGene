import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/qr1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ConnectionMethod { barcodeScanner, bluetooth }

class connection extends StatefulWidget {
  const connection({super.key});
  @override
  State<connection> createState() => _connectionState();
}

class _connectionState extends State<connection> {
  ConnectionMethod _selectedMethod = ConnectionMethod.barcodeScanner;
  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/Online-bro.png'),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              'Connect to EcoGene',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                textStyle: const TextStyle(color: AppColors.theme),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Get started by choosing your preferred connection method:',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textStyle: const TextStyle(color: AppColors.theme2),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                _buildMethodOption(
                  ConnectionMethod.barcodeScanner,
                  Icons.qr_code_scanner,
                  'Scan with QR code',
                ),
                _buildMethodOption(
                  ConnectionMethod.bluetooth,
                  Icons.bluetooth,
                  'Scan with Bluetooth',
                ),
                GestureDetector(
                  onTap: () {
                    if (_selectedMethod == ConnectionMethod.barcodeScanner) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Qr1(),
                        ),
                      );
                      print('Connecting using barcode scanner');
                    } else if (_selectedMethod == ConnectionMethod.bluetooth) {
                      // Connect using Bluetooth
                      print('Connecting using Bluetooth');
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: height * 0.09, bottom: 20),
                    height: 48,
                    width: 342,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.theme,
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMethodOption(
      ConnectionMethod method, IconData icon, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedMethod = method;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 78,
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1),
            border: Border.all(
              color: _selectedMethod == method
                  ? Color.fromRGBO(2, 71, 34, 1)
                  : Color.fromRGBO(122, 122, 122, 1),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.only(left: 16.0),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Color.fromRGBO(2, 71, 34, 1),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ],
              ),
              Radio<ConnectionMethod>(
                value: method,
                groupValue: _selectedMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedMethod = value!;
                  });
                },
                activeColor: const Color.fromRGBO(2, 71, 34, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
