import 'package:weather_app/src/models/weather_id.dart';

class GetWeatherId {}

class GetWeatherIdSuccessful {
  GetWeatherIdSuccessful(this.weatherId);

  final WeatherId weatherId;

  @override
  String toString() {
    return 'GetWeatherIdSuccessful{weatherId: $weatherId}';
  }
}

class GetWeatherIdError {
  GetWeatherIdError(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'GetWeatherIdError{error: $error}';
  }
}
