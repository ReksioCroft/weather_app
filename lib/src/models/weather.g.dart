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
      'weatherStateName',
      serializers.serialize(object.weatherStateName,
          specifiedType: const FullType(String)),
      'minTemp',
      serializers.serialize(object.minTemp,
          specifiedType: const FullType(double)),
      'maxTemp',
      serializers.serialize(object.maxTemp,
          specifiedType: const FullType(double)),
      'theTemp',
      serializers.serialize(object.theTemp,
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
        case 'weatherStateName':
          result.weatherStateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minTemp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxTemp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'theTemp':
          result.theTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final String weatherStateName;
  @override
  final double minTemp;
  @override
  final double maxTemp;
  @override
  final double theTemp;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._(
      {required this.weatherStateName,
      required this.minTemp,
      required this.maxTemp,
      required this.theTemp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weatherStateName, 'Weather', 'weatherStateName');
    BuiltValueNullFieldError.checkNotNull(minTemp, 'Weather', 'minTemp');
    BuiltValueNullFieldError.checkNotNull(maxTemp, 'Weather', 'maxTemp');
    BuiltValueNullFieldError.checkNotNull(theTemp, 'Weather', 'theTemp');
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
        weatherStateName == other.weatherStateName &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        theTemp == other.theTemp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, weatherStateName.hashCode), minTemp.hashCode),
            maxTemp.hashCode),
        theTemp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('weatherStateName', weatherStateName)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('theTemp', theTemp))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _weatherStateName;
  String? get weatherStateName => _$this._weatherStateName;
  set weatherStateName(String? weatherStateName) =>
      _$this._weatherStateName = weatherStateName;

  double? _minTemp;
  double? get minTemp => _$this._minTemp;
  set minTemp(double? minTemp) => _$this._minTemp = minTemp;

  double? _maxTemp;
  double? get maxTemp => _$this._maxTemp;
  set maxTemp(double? maxTemp) => _$this._maxTemp = maxTemp;

  double? _theTemp;
  double? get theTemp => _$this._theTemp;
  set theTemp(double? theTemp) => _$this._theTemp = theTemp;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weatherStateName = $v.weatherStateName;
      _minTemp = $v.minTemp;
      _maxTemp = $v.maxTemp;
      _theTemp = $v.theTemp;
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
            weatherStateName: BuiltValueNullFieldError.checkNotNull(
                weatherStateName, 'Weather', 'weatherStateName'),
            minTemp: BuiltValueNullFieldError.checkNotNull(
                minTemp, 'Weather', 'minTemp'),
            maxTemp: BuiltValueNullFieldError.checkNotNull(
                maxTemp, 'Weather', 'maxTemp'),
            theTemp: BuiltValueNullFieldError.checkNotNull(
                theTemp, 'Weather', 'theTemp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
