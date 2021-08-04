library weather;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/src/models/serializers.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;

  factory Weather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Weather._();

  @BuiltValueField(wireName: 'weather_state_name')
  String get weatherStateName;

  @BuiltValueField(wireName: 'min_temp')
  double get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  double get maxTemp;

  @BuiltValueField(wireName: 'the_temp')
  double get theTemp;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
