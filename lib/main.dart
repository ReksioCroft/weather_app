import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_weather.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/middleware/middleware.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/presentation/weather_page.dart';
import 'package:weather_app/src/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final LocationApi locationApi = LocationApi(apiUrl: 'https://ip-api.com/json/?fields=61439', client: client);
  final WeatherApi weatherApi = WeatherApi(locationApi: locationApi, client: client);
  final AppMiddleware middleware = AppMiddleware(locationApi, weatherApi);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(reducer, initialState: initialState, middleware: middleware.middleware);

  store.dispatch(GetWeather());

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const WeatherPage(),
      ),
    );
  }
}
