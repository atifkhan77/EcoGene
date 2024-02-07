import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/scanning.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qr1 extends StatelessWidget {
  const Qr1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            Text(
              'Scan your QR Code',
              style: GoogleFonts.poppins(
                  color: AppColors.theme,
                  fontSize: 24,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600)),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
          child: Center(
            child: Image.asset('assets/qr_code.png'),
          ),
        ),
        CustomButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QRScannerScreen(),
              ),
            );
          },
          buttonText: 'Scan QR Code',
        ),
      ]),
    );
  }
}
