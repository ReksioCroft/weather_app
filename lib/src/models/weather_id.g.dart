// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather_id;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherId> _$weatherIdSerializer = new _$WeatherIdSerializer();

class _$WeatherIdSerializer implements StructuredSerializer<WeatherId> {
  @override
  final Iterable<Type> types = const [WeatherId, _$WeatherId];
  @override
  final String wireName = 'WeatherId';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WeatherId deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherIdBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherId extends WeatherId {
  @override
  final int woeid;

  factory _$WeatherId([void Function(WeatherIdBuilder)? updates]) =>
      (new WeatherIdBuilder()..update(updates)).build();

  _$WeatherId._({required this.woeid}) : super._() {
    BuiltValueNullFieldError.checkNotNull(woeid, 'WeatherId', 'woeid');
  }

  @override
  WeatherId rebuild(void Function(WeatherIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherIdBuilder toBuilder() => new WeatherIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherId && woeid == other.woeid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, woeid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherId')..add('woeid', woeid))
        .toString();
  }
}

class WeatherIdBuilder implements Builder<WeatherId, WeatherIdBuilder> {
  _$WeatherId? _$v;

  int? _woeid;
  int? get woeid => _$this._woeid;
  set woeid(int? woeid) => _$this._woeid = woeid;

  WeatherIdBuilder();

  WeatherIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _woeid = $v.woeid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherId;
  }

  @override
  void update(void Function(WeatherIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherId build() {
    final _$result = _$v ??
        new _$WeatherId._(
            woeid: BuiltValueNullFieldError.checkNotNull(
                woeid, 'WeatherId', 'woeid'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
