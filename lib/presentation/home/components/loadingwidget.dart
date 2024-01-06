import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loadingwidget extends StatelessWidget {
  const Loadingwidget({
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
      child: Center(child:SizedBox(width: 150,
      height: 150,
      child:  Lottie.asset('assets/weatherload.json',
          repeat: true,
          reverse: true,
          width: screenwidth,
          height: 150),)),

    );
  }
}