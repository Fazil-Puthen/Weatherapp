part of 'homebloc_bloc.dart';

@immutable
sealed class HomeblocEvent {}

class FetchWeather extends HomeblocEvent{
  final String city;
  FetchWeather({
    required this.city,
  });
}
