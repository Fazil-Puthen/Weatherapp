import 'package:weather/models/cloudmodel.dart';
import 'package:weather/models/mainmodel.dart';
import 'package:weather/models/weathermodel.dart';

class MainWeather{
  final String name;
  final Cloud cloud;
  final Mainmodel main;
  final Weather weather;

  MainWeather({
    required this.name,
    required this.cloud,
    required this.main,
    required this.weather
  });

  factory MainWeather.fromjson(Map<String,dynamic> json){
    return MainWeather(
      name: json['name'],
      cloud: Cloud.fromjson(json['clouds']), 
      main: Mainmodel.fromjson(json['main']),
      weather: Weather.fromjson(json['weather'][0]));
  }
}