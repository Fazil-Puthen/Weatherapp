import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/constants/constants.dart';

class Errorwidget extends StatelessWidget {
  const Errorwidget({
    super.key,
    required this.screenwidth,
    required this.screenheigth,
  });

  final double screenwidth;
  final double screenheigth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenwidth,
      height: screenheigth*0.6,
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('No Location found with that name!',
          style:GoogleFonts.aBeeZee(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.red),),
           Text('Try Again',
          style:GoogleFonts.aBeeZee(fontSize: 15,fontWeight: FontWeight.w400,color:white),),
          SizedBox(
            width: 200,
            height: 200,
            child: Lottie.asset('assets/nodata.json',
            repeat: true,
            reverse: true),
          )
        ],
      )),
    );
  }
}