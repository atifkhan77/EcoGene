import 'package:eco_gene_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final FontWeight? FntWeight;
  final String text;
  final double fontSize;
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.FntWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: FntWeight,
          textStyle: const TextStyle(color: AppColors.theme2),
        ),
      ),
    );
  }
}
