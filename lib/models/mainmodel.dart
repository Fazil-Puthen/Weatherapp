class Mainmodel{
  final double temp;
  final double mintemp;
  final double maxtemp;
  final double feelslike;
  final int humid;

  Mainmodel({
    required this.temp,
    required this.feelslike,
    required this.maxtemp,
    required this.mintemp,
    required this.humid,
  });

  factory Mainmodel.fromjson(Map<String,dynamic> json){
    return Mainmodel(
      temp:json['temp'],
      feelslike: json['feels_like'],
      maxtemp: json['temp_max'],
      mintemp:json['temp_min'] ,
      humid: json['humidity']);
  }
}