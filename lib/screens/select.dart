import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/constant/customText.dart';
import 'package:eco_gene_app/screens/ready.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  final List<String> materials = ['Plastic', 'Wood', 'Steel', 'Clay', 'Other'];
  List<bool> checkedValues = List.filled(5, false);
  @override
  Widget build(BuildContext context) {
    bool? _isChecked = false;
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: Center(
              child: Image.asset('assets/cleaning_bucket.png'),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          const CustomText(
            text: 'Select Bucket Material',
            fontSize: 24,
            FntWeight: FontWeight.w600,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Let’s create your bucket from the items given below:',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                textStyle: const TextStyle(color: AppColors.theme2),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          _buildChecklist(),
          CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadyBucket(),
                ),
              );
            },
            buttonText: 'Add Items',
          ),
        ]),
      ),
    );
  }

  Widget _buildChecklist() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Prevent scrolling
        itemCount: materials.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 245, 245, 1),
                border: Border.all(
                  color: AppColors.checked,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: CheckboxListTile(
                title: Text(
                  materials[index],
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromRGBO(
                      51,
                      51,
                      51,
                      1,
                    ),
                  ),
                ),
                value: checkedValues[index],
                onChanged: (newValue) {
                  setState(() {
                    checkedValues[index] = newValue!;
                  });
                },
                activeColor: AppColors.checked,
              ),
            ),
          );
        },
      ),
    );
  }
}
