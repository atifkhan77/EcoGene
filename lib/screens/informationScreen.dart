import 'package:eco_gene_app/components/chechbox.dart';
import 'package:eco_gene_app/constant/button.dart';
import 'package:eco_gene_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Icon(
                  Icons.check_circle_outline,
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
                'Connected Successfully',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  textStyle: const TextStyle(color: AppColors.theme),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 112,
                    width: width * 0.43,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(234, 192, 192, 1),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ImageIcon(
                          size: 24,
                          color: Color.fromRGBO(151, 54, 54, 1),
                          AssetImage('assets/humidity_mid.png'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Humidity",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "18%",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 112,
                    width: width * 0.43,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(192, 216, 234, 1),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ImageIcon(
                          size: 24,
                          color: Color.fromRGBO(54, 99, 151, 1),
                          AssetImage('assets/temperature.png'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Temperature",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "17%",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 122,
              width: width * 0.945,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(192, 216, 234, 1),
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ImageIcon(
                    size: 24,
                    color: Color.fromRGBO(54, 151, 99, 1),
                    AssetImage('assets/compost.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Compost",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "74%",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            CustomCheckbox(
              text: 'Send notifications in case of low or high temperature.',
              isChecked: _isChecked,
              onChanged: (bool value) {
                setState(() {
                  _isChecked = value;
                });
              },
            ),
            CustomCheckbox(
              text:
                  'Send notifications for mixing up the material twice a day.',
              isChecked: _isChecked,
              onChanged: (bool value) {
                setState(() {
                  _isChecked = value;
                });
              },
            ),
            CustomButton(
              buttonText: "Done",
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
