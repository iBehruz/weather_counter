import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:case1/sevices/api-repository.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';


class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc(this.repository) : super(WeatherNotLoadedState());

  WeatherState get initialState => WeatherLoadingState();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherLoadEvent) {
      yield WeatherLoadingState();
      try {

        final Weather _loaded= await repository.getWeather();

        yield WeatherLoadedState(
          loaded: _loaded,
        );

      } catch (_) {
        yield WeatherErrorState();
      }
    }
  }
}