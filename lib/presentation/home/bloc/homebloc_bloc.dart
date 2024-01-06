import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:weather/models/mainwaether.dart';


part 'homebloc_event.dart';
part 'homebloc_state.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocInitial()) {
    on<HomeblocEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FetchWeather>(fetchweather);
  }

  FutureOr<void> fetchweather(FetchWeather event, Emitter<HomeblocState> emit) async{
    emit(loadingstate());
    try{
    final uri=Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=${event.city}&appid=3fc4ecbf5ca9569d7c2e4dd19db4338b');
   final weatherdata=await http.get(uri);
   if(weatherdata.statusCode==200){
    final result=jsonDecode(weatherdata.body);
    final weather=MainWeather.fromjson(result);
    emit(WeatherFetchedState(weather: weather));
    print('feelslike :${weather.main.feelslike}');
   }
   else{
    emit(Errorstate());
   }
    }
    catch(error){
     debugPrint(error.toString());
    }
  }
}
