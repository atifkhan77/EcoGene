import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/connection.dart';
import 'package:eco_gene_app/screens/onbaording2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoarding1 extends StatelessWidget {
  const onBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.03, left: width * 0.8, top: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const connection(),
                    ),
                  );
                },
                child: Opacity(
                  opacity: 0.6,
                  child: Text(
                    'Skip',
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle(
                        color: AppColors.theme,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Center(
                child: Image.asset('assets/ecosystem.png'),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    textStyle: const TextStyle(color: AppColors.theme),
                  ),
                ),
                Text(
                  'EcoGene',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    textStyle: const TextStyle(color: AppColors.theme),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'EcoGene helps you recycle kitchen waste to organic compost. It contains all the information you need.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textStyle: const TextStyle(color: AppColors.theme2),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset('assets/sliders.png'),
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const onBoarding2(),
                  ),
                );
              },
              buttonText: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
