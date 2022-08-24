import 'package:case1/sevices/api_provider.dart';
import 'package:weather/weather.dart';

class WeatherRepository {
  WeatherProvider _provider = WeatherProvider();
  Future<Weather> getWeather() {
    return _provider.getWeather();
  }
}