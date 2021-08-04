import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';

class WeatherApi {
  WeatherApi({required Client client}) : _client = client;

  final Client _client;

  Future<Weather> getWeather(Location location) async {
    final Uri uri = Uri.parse('https://www.metaweather.com/api/location/search/?query=${location.city}');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }
    final int woeid = jsonDecode(response.body)[0]['woeid'] as int;
    final Uri uriWeather = Uri.parse('https://www.metaweather.com/api/location/$woeid');
    final Response responseWeather = await _client.get(uriWeather);
    // print(responseWeather.body);
    if (responseWeather.statusCode >= 300) {
      throw StateError(response.body);
    }
    final Weather weather = Weather.fromJson(jsonDecode(responseWeather.body)['consolidated_weather'][0]);
    // print(weather.the_temp.toString());
    return weather;
  }
}
