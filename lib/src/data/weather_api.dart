import 'dart:convert';
import 'package:http/http.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/models/weather_id.dart';

class WeatherApi {
  WeatherApi({required LocationApi locationApi, required Client client})
      : _client = client,
        _locationApi = locationApi;

  final Client _client;
  final LocationApi _locationApi;

  Future<Weather> getWeather() async {
    final Location location = await _locationApi.getLocation();
    final Uri uri = Uri.parse('https://www.metaweather.com/api/location/search/?query=${location.city}');
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
