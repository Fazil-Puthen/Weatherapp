import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/models/mainwaether.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
    required this.screenwidth,
    required this.detail,
  });

  final double screenwidth;
  final MainWeather detail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: screenwidth,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text(detail.name,style: GoogleFonts.openSans(fontSize: 35,fontWeight: FontWeight.w700,
         color:white),),
         sbox,
         Text('${detail.main.temp} Fr',
         style: GoogleFonts.catamaran(fontSize: 25,color:Colors.red,fontWeight: FontWeight.w700),),
         box,
         Text(detail.weather.description,style:smallstyle,),
         Text('Clouds: ${detail.cloud.cloud}%',style: smallstyle,),
         Image(image: NetworkImage('https://openweathermap.org/img/wn/${detail.weather.icon}@2x.png')),
         Text('Max temp: ${detail.main.maxtemp} Fr',style:  bigstyle),
         box,
         Text('Min temp: ${detail.main.mintemp} Fr',style:  bigstyle),
         box,
         Text('Feels like  : ${detail.main.feelslike} Fr',style:  bigstyle),
         box,
         Text('Humidity   : ${detail.main.humid}',style:  bigstyle),
       ],
     ),
    );
  }
}