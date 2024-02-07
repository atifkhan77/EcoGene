import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/customText.dart';
import 'package:eco_gene_app/screens/onboarding1.dart';
import 'package:flutter/material.dart';

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
        const CustomText(
          text: 'EcoGene',
          fontSize: 32,
          FntWeight: FontWeight.w600,
        ),
        SizedBox(
          height: height * 0.015,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: CustomText(
            text: 'Turning Waste into Wisdom, Nurturing Greener Tomorrows',
            fontSize: 16,
            FntWeight: FontWeight.w500,
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
