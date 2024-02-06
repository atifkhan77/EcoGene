import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/connection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoarding2 extends StatelessWidget {
  const onBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Center(
                child: Image.asset('assets/ecosystem.png'),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: 148,
              padding: EdgeInsets.only(left: 20, right: 40),
              child: Column(
                children: [
                  Text(
                    'Features',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      textStyle: const TextStyle(color: AppColors.theme),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Column(
                    children: [
                      Text(
                        '•  Real-time Temperature Monitoring',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textStyle: const TextStyle(color: AppColors.theme2),
                        ),
                      ),
                      Text(
                        '•  Humidity Tracking ',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textStyle: const TextStyle(color: AppColors.theme2),
                        ),
                      ),
                      Text(
                        '•  Clear and User-Friendly Digital Display',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textStyle: const TextStyle(color: AppColors.theme2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset('assets/sliders2.png'),
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const connection(),
                  ),
                );
              },
              buttonText: 'Done',
            ),
          ],
        ),
      ),
    );
  }
}
