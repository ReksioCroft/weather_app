import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
]);

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.location = action.location.toBuilder();
  });
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.weather = action.weather.toBuilder();
  });
}
