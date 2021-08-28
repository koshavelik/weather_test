// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SysModel> _$sysModelSerializer = new _$SysModelSerializer();

class _$SysModelSerializer implements StructuredSerializer<SysModel> {
  @override
  final Iterable<Type> types = const [SysModel, _$SysModel];
  @override
  final String wireName = 'SysModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SysModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  SysModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SysModel extends SysModel {
  @override
  final int type;
  @override
  final int id;
  @override
  final double? message;
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  factory _$SysModel([void Function(SysModelBuilder)? updates]) =>
      (new SysModelBuilder()..update(updates)).build();

  _$SysModel._(
      {required this.type,
      required this.id,
      this.message,
      required this.country,
      required this.sunrise,
      required this.sunset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'SysModel', 'type');
    BuiltValueNullFieldError.checkNotNull(id, 'SysModel', 'id');
    BuiltValueNullFieldError.checkNotNull(country, 'SysModel', 'country');
    BuiltValueNullFieldError.checkNotNull(sunrise, 'SysModel', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, 'SysModel', 'sunset');
  }

  @override
  SysModel rebuild(void Function(SysModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysModelBuilder toBuilder() => new SysModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SysModel &&
        type == other.type &&
        id == other.id &&
        message == other.message &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, type.hashCode), id.hashCode), message.hashCode),
                country.hashCode),
            sunrise.hashCode),
        sunset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SysModel')
          ..add('type', type)
          ..add('id', id)
          ..add('message', message)
          ..add('country', country)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class SysModelBuilder implements Builder<SysModel, SysModelBuilder> {
  _$SysModel? _$v;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  double? _message;
  double? get message => _$this._message;
  set message(double? message) => _$this._message = message;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  SysModelBuilder();

  SysModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _message = $v.message;
      _country = $v.country;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SysModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SysModel;
  }

  @override
  void update(void Function(SysModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SysModel build() {
    final _$result = _$v ??
        new _$SysModel._(
            type:
                BuiltValueNullFieldError.checkNotNull(type, 'SysModel', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(id, 'SysModel', 'id'),
            message: message,
            country: BuiltValueNullFieldError.checkNotNull(
                country, 'SysModel', 'country'),
            sunrise: BuiltValueNullFieldError.checkNotNull(
                sunrise, 'SysModel', 'sunrise'),
            sunset: BuiltValueNullFieldError.checkNotNull(
                sunset, 'SysModel', 'sunset'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
