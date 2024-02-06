import 'dart:async';

import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/informationScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Instructions2 extends StatefulWidget {
  const Instructions2({super.key});

  @override
  State<Instructions2> createState() => _Instructions2State();
}

class _Instructions2State extends State<Instructions2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => InformationScreen()));
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Center(
            child: Icon(
              Icons.recommend_outlined,
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
            'Thanks You for Following Instructions',
            textAlign: TextAlign.center,
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
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            'Your bucket is now ready',
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
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Row(children: [
                Text(
                  '•  Keep temperature ',
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(34, 34, 34, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '20 - 35',
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(34, 34, 34, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ]),
              Row(
                children: [
                  Text(
                    '•  Humidity ',
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(34, 34, 34, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '68',
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(34, 34, 34, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
