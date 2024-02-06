import 'dart:ffi';

import 'package:eco_gene_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.only(top: 40),
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
                  width: 165,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 192, 192, 1),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    children: [
                      ImageIcon(
                        AssetImage('assets/humidity_mid.png'),
                      ),
                      Text(""),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 112,
                  width: 165,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 216, 234, 1),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    children: [
                      ImageIcon(
                        size: 12,
                        AssetImage(
                          'assets/humidity_mid.png',
                        ),
                      ),
                      Text(""),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
