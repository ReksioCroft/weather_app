library weather_id;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/src/models/serializers.dart';

part 'weather_id.g.dart';

abstract class WeatherId implements Built<WeatherId, WeatherIdBuilder> {
  factory WeatherId([void Function(WeatherIdBuilder b) updates]) = _$WeatherId;
  factory WeatherId.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  WeatherId._();

  int get woeid;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<WeatherId> get serializer => _$weatherIdSerializer;
}