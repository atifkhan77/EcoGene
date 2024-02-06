import 'package:eco_gene_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;
  CustomButton({
    Key? key, // Add Key? key here
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return GestureDetector(
      onTap: onTap,
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
            buttonText,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              textStyle: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
