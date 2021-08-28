// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentWeatherModel> _$currentWeatherModelSerializer =
    new _$CurrentWeatherModelSerializer();

class _$CurrentWeatherModelSerializer
    implements StructuredSerializer<CurrentWeatherModel> {
  @override
  final Iterable<Type> types = const [
    CurrentWeatherModel,
    _$CurrentWeatherModel
  ];
  @override
  final String wireName = 'CurrentWeatherModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CurrentWeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'coord',
      serializers.serialize(object.coord,
          specifiedType: const FullType(CoordModel)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherModel)])),
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(String)),
      'main',
      serializers.serialize(object.main,
          specifiedType: const FullType(WeatherMainModel)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'wind',
      serializers.serialize(object.wind,
          specifiedType: const FullType(WindModel)),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(CloudsModel)),
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SysModel)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'cod',
      serializers.serialize(object.cod, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.rain;
    if (value != null) {
      result
        ..add('rain')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PrecipitationModel)));
    }
    value = object.snow;
    if (value != null) {
      result
        ..add('snow')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PrecipitationModel)));
    }
    return result;
  }

  @override
  CurrentWeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentWeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(CoordModel))! as CoordModel);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherModel)]))!
              as BuiltList<Object?>);
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WeatherMainModel))!
              as WeatherMainModel);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(WindModel))! as WindModel);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(CloudsModel))! as CloudsModel);
          break;
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SysModel))! as SysModel);
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rain':
          result.rain.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PrecipitationModel))!
              as PrecipitationModel);
          break;
        case 'snow':
          result.snow.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PrecipitationModel))!
              as PrecipitationModel);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentWeatherModel extends CurrentWeatherModel {
  @override
  final CoordModel coord;
  @override
  final BuiltList<WeatherModel> weather;
  @override
  final String base;
  @override
  final WeatherMainModel main;
  @override
  final int visibility;
  @override
  final WindModel wind;
  @override
  final CloudsModel clouds;
  @override
  final int dt;
  @override
  final SysModel sys;
  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final int cod;
  @override
  final PrecipitationModel? rain;
  @override
  final PrecipitationModel? snow;

  factory _$CurrentWeatherModel(
          [void Function(CurrentWeatherModelBuilder)? updates]) =>
      (new CurrentWeatherModelBuilder()..update(updates)).build();

  _$CurrentWeatherModel._(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod,
      this.rain,
      this.snow})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coord, 'CurrentWeatherModel', 'coord');
    BuiltValueNullFieldError.checkNotNull(
        weather, 'CurrentWeatherModel', 'weather');
    BuiltValueNullFieldError.checkNotNull(base, 'CurrentWeatherModel', 'base');
    BuiltValueNullFieldError.checkNotNull(main, 'CurrentWeatherModel', 'main');
    BuiltValueNullFieldError.checkNotNull(
        visibility, 'CurrentWeatherModel', 'visibility');
    BuiltValueNullFieldError.checkNotNull(wind, 'CurrentWeatherModel', 'wind');
    BuiltValueNullFieldError.checkNotNull(
        clouds, 'CurrentWeatherModel', 'clouds');
    BuiltValueNullFieldError.checkNotNull(dt, 'CurrentWeatherModel', 'dt');
    BuiltValueNullFieldError.checkNotNull(sys, 'CurrentWeatherModel', 'sys');
    BuiltValueNullFieldError.checkNotNull(
        timezone, 'CurrentWeatherModel', 'timezone');
    BuiltValueNullFieldError.checkNotNull(id, 'CurrentWeatherModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'CurrentWeatherModel', 'name');
    BuiltValueNullFieldError.checkNotNull(cod, 'CurrentWeatherModel', 'cod');
  }

  @override
  CurrentWeatherModel rebuild(
          void Function(CurrentWeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentWeatherModelBuilder toBuilder() =>
      new CurrentWeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentWeatherModel &&
        coord == other.coord &&
        weather == other.weather &&
        base == other.base &&
        main == other.main &&
        visibility == other.visibility &&
        wind == other.wind &&
        clouds == other.clouds &&
        dt == other.dt &&
        sys == other.sys &&
        timezone == other.timezone &&
        id == other.id &&
        name == other.name &&
        cod == other.cod &&
        rain == other.rain &&
        snow == other.snow;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                coord.hashCode),
                                                            weather.hashCode),
                                                        base.hashCode),
                                                    main.hashCode),
                                                visibility.hashCode),
                                            wind.hashCode),
                                        clouds.hashCode),
                                    dt.hashCode),
                                sys.hashCode),
                            timezone.hashCode),
                        id.hashCode),
                    name.hashCode),
                cod.hashCode),
            rain.hashCode),
        snow.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentWeatherModel')
          ..add('coord', coord)
          ..add('weather', weather)
          ..add('base', base)
          ..add('main', main)
          ..add('visibility', visibility)
          ..add('wind', wind)
          ..add('clouds', clouds)
          ..add('dt', dt)
          ..add('sys', sys)
          ..add('timezone', timezone)
          ..add('id', id)
          ..add('name', name)
          ..add('cod', cod)
          ..add('rain', rain)
          ..add('snow', snow))
        .toString();
  }
}

class CurrentWeatherModelBuilder
    implements Builder<CurrentWeatherModel, CurrentWeatherModelBuilder> {
  _$CurrentWeatherModel? _$v;

  CoordModelBuilder? _coord;
  CoordModelBuilder get coord => _$this._coord ??= new CoordModelBuilder();
  set coord(CoordModelBuilder? coord) => _$this._coord = coord;

  ListBuilder<WeatherModel>? _weather;
  ListBuilder<WeatherModel> get weather =>
      _$this._weather ??= new ListBuilder<WeatherModel>();
  set weather(ListBuilder<WeatherModel>? weather) => _$this._weather = weather;

  String? _base;
  String? get base => _$this._base;
  set base(String? base) => _$this._base = base;

  WeatherMainModelBuilder? _main;
  WeatherMainModelBuilder get main =>
      _$this._main ??= new WeatherMainModelBuilder();
  set main(WeatherMainModelBuilder? main) => _$this._main = main;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  WindModelBuilder? _wind;
  WindModelBuilder get wind => _$this._wind ??= new WindModelBuilder();
  set wind(WindModelBuilder? wind) => _$this._wind = wind;

  CloudsModelBuilder? _clouds;
  CloudsModelBuilder get clouds => _$this._clouds ??= new CloudsModelBuilder();
  set clouds(CloudsModelBuilder? clouds) => _$this._clouds = clouds;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  SysModelBuilder? _sys;
  SysModelBuilder get sys => _$this._sys ??= new SysModelBuilder();
  set sys(SysModelBuilder? sys) => _$this._sys = sys;

  int? _timezone;
  int? get timezone => _$this._timezone;
  set timezone(int? timezone) => _$this._timezone = timezone;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _cod;
  int? get cod => _$this._cod;
  set cod(int? cod) => _$this._cod = cod;

  PrecipitationModelBuilder? _rain;
  PrecipitationModelBuilder get rain =>
      _$this._rain ??= new PrecipitationModelBuilder();
  set rain(PrecipitationModelBuilder? rain) => _$this._rain = rain;

  PrecipitationModelBuilder? _snow;
  PrecipitationModelBuilder get snow =>
      _$this._snow ??= new PrecipitationModelBuilder();
  set snow(PrecipitationModelBuilder? snow) => _$this._snow = snow;

  CurrentWeatherModelBuilder();

  CurrentWeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coord = $v.coord.toBuilder();
      _weather = $v.weather.toBuilder();
      _base = $v.base;
      _main = $v.main.toBuilder();
      _visibility = $v.visibility;
      _wind = $v.wind.toBuilder();
      _clouds = $v.clouds.toBuilder();
      _dt = $v.dt;
      _sys = $v.sys.toBuilder();
      _timezone = $v.timezone;
      _id = $v.id;
      _name = $v.name;
      _cod = $v.cod;
      _rain = $v.rain?.toBuilder();
      _snow = $v.snow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentWeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentWeatherModel;
  }

  @override
  void update(void Function(CurrentWeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentWeatherModel build() {
    _$CurrentWeatherModel _$result;
    try {
      _$result = _$v ??
          new _$CurrentWeatherModel._(
              coord: coord.build(),
              weather: weather.build(),
              base: BuiltValueNullFieldError.checkNotNull(
                  base, 'CurrentWeatherModel', 'base'),
              main: main.build(),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, 'CurrentWeatherModel', 'visibility'),
              wind: wind.build(),
              clouds: clouds.build(),
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, 'CurrentWeatherModel', 'dt'),
              sys: sys.build(),
              timezone: BuiltValueNullFieldError.checkNotNull(
                  timezone, 'CurrentWeatherModel', 'timezone'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'CurrentWeatherModel', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'CurrentWeatherModel', 'name'),
              cod: BuiltValueNullFieldError.checkNotNull(
                  cod, 'CurrentWeatherModel', 'cod'),
              rain: _rain?.build(),
              snow: _snow?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coord';
        coord.build();
        _$failedField = 'weather';
        weather.build();

        _$failedField = 'main';
        main.build();

        _$failedField = 'wind';
        wind.build();
        _$failedField = 'clouds';
        clouds.build();

        _$failedField = 'sys';
        sys.build();

        _$failedField = 'rain';
        _rain?.build();
        _$failedField = 'snow';
        _snow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CurrentWeatherModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
