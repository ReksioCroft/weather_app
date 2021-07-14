// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'weather_state_name',
      serializers.serialize(object.weather_state_name,
          specifiedType: const FullType(String)),
      'min_temp',
      serializers.serialize(object.min_temp,
          specifiedType: const FullType(double)),
      'max_temp',
      serializers.serialize(object.max_temp,
          specifiedType: const FullType(double)),
      'the_temp',
      serializers.serialize(object.the_temp,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weather_state_name':
          result.weather_state_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min_temp':
          result.min_temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'max_temp':
          result.max_temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'the_temp':
          result.the_temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final String weather_state_name;
  @override
  final double min_temp;
  @override
  final double max_temp;
  @override
  final double the_temp;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._(
      {required this.weather_state_name,
      required this.min_temp,
      required this.max_temp,
      required this.the_temp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weather_state_name, 'Weather', 'weather_state_name');
    BuiltValueNullFieldError.checkNotNull(min_temp, 'Weather', 'min_temp');
    BuiltValueNullFieldError.checkNotNull(max_temp, 'Weather', 'max_temp');
    BuiltValueNullFieldError.checkNotNull(the_temp, 'Weather', 'the_temp');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        weather_state_name == other.weather_state_name &&
        min_temp == other.min_temp &&
        max_temp == other.max_temp &&
        the_temp == other.the_temp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, weather_state_name.hashCode), min_temp.hashCode),
            max_temp.hashCode),
        the_temp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('weather_state_name', weather_state_name)
          ..add('min_temp', min_temp)
          ..add('max_temp', max_temp)
          ..add('the_temp', the_temp))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _weather_state_name;
  String? get weather_state_name => _$this._weather_state_name;
  set weather_state_name(String? weather_state_name) =>
      _$this._weather_state_name = weather_state_name;

  double? _min_temp;
  double? get min_temp => _$this._min_temp;
  set min_temp(double? min_temp) => _$this._min_temp = min_temp;

  double? _max_temp;
  double? get max_temp => _$this._max_temp;
  set max_temp(double? max_temp) => _$this._max_temp = max_temp;

  double? _the_temp;
  double? get the_temp => _$this._the_temp;
  set the_temp(double? the_temp) => _$this._the_temp = the_temp;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weather_state_name = $v.weather_state_name;
      _min_temp = $v.min_temp;
      _max_temp = $v.max_temp;
      _the_temp = $v.the_temp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            weather_state_name: BuiltValueNullFieldError.checkNotNull(
                weather_state_name, 'Weather', 'weather_state_name'),
            min_temp: BuiltValueNullFieldError.checkNotNull(
                min_temp, 'Weather', 'min_temp'),
            max_temp: BuiltValueNullFieldError.checkNotNull(
                max_temp, 'Weather', 'max_temp'),
            the_temp: BuiltValueNullFieldError.checkNotNull(
                the_temp, 'Weather', 'the_temp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
