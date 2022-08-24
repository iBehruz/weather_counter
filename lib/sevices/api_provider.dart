import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

class WeatherProvider {
  Future<Weather> getWeather() async {

    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      bool isLocationServiceEnabled = await Geolocator
          .isLocationServiceEnabled();

      print(isLocationServiceEnabled);
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      String key = '856822fd8e22db5e1ba48c0e7d69844a';

      WeatherFactory wf = WeatherFactory(key);

      Weather w = await wf.currentWeatherByLocation(
          position.latitude, position.longitude);

      print(w);
      return w;
    }catch(er){
      throw Exception('Error fetching records');
    }
  }
}