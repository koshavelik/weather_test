// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherMainModel> _$weatherMainModelSerializer =
    new _$WeatherMainModelSerializer();

class _$WeatherMainModelSerializer
    implements StructuredSerializer<WeatherMainModel> {
  @override
  final Iterable<Type> types = const [WeatherMainModel, _$WeatherMainModel];
  @override
  final String wireName = 'WeatherMainModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherMainModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feels_like,
          specifiedType: const FullType(double)),
      'temp_min',
      serializers.serialize(object.temp_min,
          specifiedType: const FullType(double)),
      'temp_max',
      serializers.serialize(object.temp_max,
          specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  WeatherMainModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherMainModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feels_like':
          result.feels_like = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_min':
          result.temp_min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_max':
          result.temp_max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherMainModel extends WeatherMainModel {
  @override
  final double temp;
  @override
  final double feels_like;
  @override
  final double temp_min;
  @override
  final double temp_max;
  @override
  final double pressure;
  @override
  final double humidity;

  factory _$WeatherMainModel(
          [void Function(WeatherMainModelBuilder)? updates]) =>
      (new WeatherMainModelBuilder()..update(updates)).build();

  _$WeatherMainModel._(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(temp, 'WeatherMainModel', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feels_like, 'WeatherMainModel', 'feels_like');
    BuiltValueNullFieldError.checkNotNull(
        temp_min, 'WeatherMainModel', 'temp_min');
    BuiltValueNullFieldError.checkNotNull(
        temp_max, 'WeatherMainModel', 'temp_max');
    BuiltValueNullFieldError.checkNotNull(
        pressure, 'WeatherMainModel', 'pressure');
    BuiltValueNullFieldError.checkNotNull(
        humidity, 'WeatherMainModel', 'humidity');
  }

  @override
  WeatherMainModel rebuild(void Function(WeatherMainModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherMainModelBuilder toBuilder() =>
      new WeatherMainModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherMainModel &&
        temp == other.temp &&
        feels_like == other.feels_like &&
        temp_min == other.temp_min &&
        temp_max == other.temp_max &&
        pressure == other.pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, temp.hashCode), feels_like.hashCode),
                    temp_min.hashCode),
                temp_max.hashCode),
            pressure.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherMainModel')
          ..add('temp', temp)
          ..add('feels_like', feels_like)
          ..add('temp_min', temp_min)
          ..add('temp_max', temp_max)
          ..add('pressure', pressure)
          ..add('humidity', humidity))
        .toString();
  }
}

class WeatherMainModelBuilder
    implements Builder<WeatherMainModel, WeatherMainModelBuilder> {
  _$WeatherMainModel? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feels_like;
  double? get feels_like => _$this._feels_like;
  set feels_like(double? feels_like) => _$this._feels_like = feels_like;

  double? _temp_min;
  double? get temp_min => _$this._temp_min;
  set temp_min(double? temp_min) => _$this._temp_min = temp_min;

  double? _temp_max;
  double? get temp_max => _$this._temp_max;
  set temp_max(double? temp_max) => _$this._temp_max = temp_max;

  double? _pressure;
  double? get pressure => _$this._pressure;
  set pressure(double? pressure) => _$this._pressure = pressure;

  double? _humidity;
  double? get humidity => _$this._humidity;
  set humidity(double? humidity) => _$this._humidity = humidity;

  WeatherMainModelBuilder();

  WeatherMainModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feels_like = $v.feels_like;
      _temp_min = $v.temp_min;
      _temp_max = $v.temp_max;
      _pressure = $v.pressure;
      _humidity = $v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherMainModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherMainModel;
  }

  @override
  void update(void Function(WeatherMainModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherMainModel build() {
    final _$result = _$v ??
        new _$WeatherMainModel._(
            temp: BuiltValueNullFieldError.checkNotNull(
                temp, 'WeatherMainModel', 'temp'),
            feels_like: BuiltValueNullFieldError.checkNotNull(
                feels_like, 'WeatherMainModel', 'feels_like'),
            temp_min: BuiltValueNullFieldError.checkNotNull(
                temp_min, 'WeatherMainModel', 'temp_min'),
            temp_max: BuiltValueNullFieldError.checkNotNull(
                temp_max, 'WeatherMainModel', 'temp_max'),
            pressure: BuiltValueNullFieldError.checkNotNull(
                pressure, 'WeatherMainModel', 'pressure'),
            humidity: BuiltValueNullFieldError.checkNotNull(
                humidity, 'WeatherMainModel', 'humidity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
