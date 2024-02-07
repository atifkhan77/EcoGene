import 'package:eco_gene_app/constant/customText.dart';
import 'package:eco_gene_app/screens/instruction.dart';
import 'package:flutter/material.dart';
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
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const instructionScreen()));
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              Icons.check_circle_outline,
              color: Color.fromRGBO(54, 151, 99, 1),
              size: 150,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          const CustomText(
            text: 'Your Bucket is Ready',
            fontSize: 24,
            FntWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
