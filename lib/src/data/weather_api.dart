import 'dart:convert';
import 'package:http/http.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/models/weather_id.dart';

class WeatherApi {
  WeatherApi({required Location location, required Client client})
      : _location = location,
        _client = client;

  final Location _location;
  final Client _client;

  Future<Weather> getWeather() async {
    final Uri uri = Uri.parse('https://www.metaweather.com/api/location/search/?query=${_location.city}');
    final Response response = await _client.get(uri);
    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }
    final WeatherId weatherId = WeatherId.fromJson(jsonDecode(response.body));
    final Uri uriWeather = Uri.parse('https://www.metaweather.com/api/location/${weatherId.woeid}');
    final Response responseWeather = await _client.get(uriWeather);
    if (responseWeather.statusCode >= 300) {
      throw StateError(response.body);
    }
    return Weather.fromJson(jsonDecode(response.body));
  }
}
