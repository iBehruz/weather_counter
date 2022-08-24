part of 'weather_bloc.dart';


abstract class WeatherEvent {}

class WeatherLoadEvent extends WeatherEvent {}

class WeatherLoadedEvent extends WeatherEvent {}