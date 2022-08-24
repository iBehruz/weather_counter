part of 'weather_bloc.dart';

abstract class WeatherState {}

class WeatherNotLoadedState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  Weather loaded;

  WeatherLoadedState({
    required this.loaded,
  }) : assert(loaded != null);
}

class WeatherErrorState extends WeatherState {}
