import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/instructions2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class instructionScreen extends StatelessWidget {
  const instructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                child: Icon(
                  Icons.lightbulb_outline,
                  color: Color.fromRGBO(54, 151, 99, 1),
                  size: 150,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Instructions',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  textStyle: const TextStyle(color: AppColors.theme),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Things to add in the bucket',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  textStyle: const TextStyle(color: AppColors.theme),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInstructionItem("1. Leaves"),
                  _buildInstructionItem("2. Banana Peels"),
                  _buildInstructionItem("3. Egg Shells"),
                  _buildInstructionItem("4. Soil"),
                  _buildInstructionItem("5. Others"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'General Instructions',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  textStyle: const TextStyle(color: AppColors.theme),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInstructionItem("•  Mix Well"),
                  _buildInstructionItem("•  lose the Lid"),
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Instructions2(),
                  ),
                );
              },
              buttonText: 'Got it!',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color.fromRGBO(34, 34, 34, 1),
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
