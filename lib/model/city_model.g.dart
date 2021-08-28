// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CityModel> _$cityModelSerializer = new _$CityModelSerializer();

class _$CityModelSerializer implements StructuredSerializer<CityModel> {
  @override
  final Iterable<Type> types = const [CityModel, _$CityModel];
  @override
  final String wireName = 'CityModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CityModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'coord',
      serializers.serialize(object.coord,
          specifiedType: const FullType(CoordModel)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CityModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(CoordModel))! as CoordModel);
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
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CityModel extends CityModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final CoordModel coord;
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  final int timezone;

  factory _$CityModel([void Function(CityModelBuilder)? updates]) =>
      (new CityModelBuilder()..update(updates)).build();

  _$CityModel._(
      {required this.id,
      required this.name,
      required this.coord,
      required this.country,
      required this.sunrise,
      required this.sunset,
      required this.timezone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CityModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'CityModel', 'name');
    BuiltValueNullFieldError.checkNotNull(coord, 'CityModel', 'coord');
    BuiltValueNullFieldError.checkNotNull(country, 'CityModel', 'country');
    BuiltValueNullFieldError.checkNotNull(sunrise, 'CityModel', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, 'CityModel', 'sunset');
    BuiltValueNullFieldError.checkNotNull(timezone, 'CityModel', 'timezone');
  }

  @override
  CityModel rebuild(void Function(CityModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityModelBuilder toBuilder() => new CityModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CityModel &&
        id == other.id &&
        name == other.name &&
        coord == other.coord &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        timezone == other.timezone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        coord.hashCode),
                    country.hashCode),
                sunrise.hashCode),
            sunset.hashCode),
        timezone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CityModel')
          ..add('id', id)
          ..add('name', name)
          ..add('coord', coord)
          ..add('country', country)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('timezone', timezone))
        .toString();
  }
}

class CityModelBuilder implements Builder<CityModel, CityModelBuilder> {
  _$CityModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CoordModelBuilder? _coord;
  CoordModelBuilder get coord => _$this._coord ??= new CoordModelBuilder();
  set coord(CoordModelBuilder? coord) => _$this._coord = coord;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  int? _timezone;
  int? get timezone => _$this._timezone;
  set timezone(int? timezone) => _$this._timezone = timezone;

  CityModelBuilder();

  CityModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _coord = $v.coord.toBuilder();
      _country = $v.country;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _timezone = $v.timezone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CityModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CityModel;
  }

  @override
  void update(void Function(CityModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CityModel build() {
    _$CityModel _$result;
    try {
      _$result = _$v ??
          new _$CityModel._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'CityModel', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'CityModel', 'name'),
              coord: coord.build(),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, 'CityModel', 'country'),
              sunrise: BuiltValueNullFieldError.checkNotNull(
                  sunrise, 'CityModel', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(
                  sunset, 'CityModel', 'sunset'),
              timezone: BuiltValueNullFieldError.checkNotNull(
                  timezone, 'CityModel', 'timezone'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coord';
        coord.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CityModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
