import 'package:eco_gene_app/constant/color.dart';
import 'package:eco_gene_app/screens/instruction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class ReadyBucket extends StatefulWidget {
  const ReadyBucket({super.key});

  @override
  State<ReadyBucket> createState() => _ReadyBucketState();
}

class _ReadyBucketState extends State<ReadyBucket> {
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
        context, MaterialPageRoute(builder: (context) => instructionScreen()));
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.check_circle_outline,
              color: Color.fromRGBO(54, 151, 99, 1),
              size: 150,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            'Your Bucket is Ready',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textStyle: const TextStyle(color: AppColors.theme),
            ),
          ),
        ],
      ),
    );
  }
}
