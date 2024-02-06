import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.05),
          child: Center(
            child: Image.asset('assets/ecosystem.png'),
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Text(
          'EcoGene',
          style: GoogleFonts.poppins(
            fontSize: 32,
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
            'Turning Waste into Wisdom, Nurturing Greener Tomorrows',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              textStyle: const TextStyle(color: AppColors.theme2),
            ),
          ),
        ),
        CustomButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const onBoarding1(),
              ),
            );
          },
          buttonText: 'Get Started',
        ),
      ]),
    );
  }
}
