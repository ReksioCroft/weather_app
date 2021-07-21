import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';

class AppEpics {
  AppEpics(this._locationApi, this._weatherApi);

  final LocationApi _locationApi;
  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocation),
      TypedEpic<AppState, GetWeatherStart>(_getWeather),
    ]);
  }

  Stream<AppAction> _getLocation(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.asyncMap((GetLocation action) => _locationApi.getLocation()).expand((Location location) {
      return <AppAction>[
        GetLocation.successful(location),
        const GetWeather(),
      ];
    }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
  }

  Stream<AppAction> _getWeather(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeather action) => _weatherApi.getWeather(store.state.location!))
        .map((Weather weather) => GetWeather.successful(weather))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeather.error(error, stackTrace));
  }
}
