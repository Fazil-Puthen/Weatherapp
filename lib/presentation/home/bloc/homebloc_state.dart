part of 'homebloc_bloc.dart';

@immutable
sealed class HomeblocState {}

final class HomeblocInitial extends HomeblocState {}

class WeatherFetchedState extends HomeblocState{
  final MainWeather weather;

  WeatherFetchedState({
    required this.weather
  });
}

class Errorstate extends HomeblocState{}

class loadingstate extends HomeblocState{}
