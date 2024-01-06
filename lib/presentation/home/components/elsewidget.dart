import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/constants/constants.dart';

class Elsewidget extends StatelessWidget {
  const Elsewidget({
    super.key,
    required this.screenwidth,
    required this.screenheigth,
  });

  final double screenwidth;
  final double screenheigth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(width: 100,
        // height: 100,
        // child: Image.asset('assets/mid day.png'),),
        Text('Get current weather condition',
        style:  GoogleFonts.catamaran(fontSize: 15,color:white,fontWeight: FontWeight.w700),),
        SizedBox(
          width: screenwidth,
          height: screenheigth*0.7,
          child: Lottie.asset('assets/weather animation.json',
          repeat: true,
          reverse: true,
          width: screenwidth,
          height: 150),
      
        ),
      ],
    );
  }
}