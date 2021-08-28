// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_item_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForecastItemModel> _$forecastItemModelSerializer =
    new _$ForecastItemModelSerializer();

class _$ForecastItemModelSerializer
    implements StructuredSerializer<ForecastItemModel> {
  @override
  final Iterable<Type> types = const [ForecastItemModel, _$ForecastItemModel];
  @override
  final String wireName = 'ForecastItemModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ForecastItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main,
          specifiedType: const FullType(WeatherMainModel)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherModel)])),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(CloudsModel)),
      'wind',
      serializers.serialize(object.wind,
          specifiedType: const FullType(WindModel)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'pop',
      serializers.serialize(object.pop, specifiedType: const FullType(double)),
      'dtTxt',
      serializers.serialize(object.dtTxt,
          specifiedType: const FullType(String)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(DayPartModel)),
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
  ForecastItemModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WeatherMainModel))!
              as WeatherMainModel);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherModel)]))!
              as BuiltList<Object?>);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(CloudsModel))! as CloudsModel);
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(WindModel))! as WindModel);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
        case 'dtTxt':
          result.dtTxt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(DayPartModel))! as DayPartModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastItemModel extends ForecastItemModel {
  @override
  final int dt;
  @override
  final WeatherMainModel main;
  @override
  final BuiltList<WeatherModel> weather;
  @override
  final CloudsModel clouds;
  @override
  final WindModel wind;
  @override
  final int visibility;
  @override
  final double pop;
  @override
  final PrecipitationModel? rain;
  @override
  final PrecipitationModel? snow;
  @override
  final String dtTxt;
  @override
  final DayPartModel sys;

  factory _$ForecastItemModel(
          [void Function(ForecastItemModelBuilder)? updates]) =>
      (new ForecastItemModelBuilder()..update(updates)).build();

  _$ForecastItemModel._(
      {required this.dt,
      required this.main,
      required this.weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      this.rain,
      this.snow,
      required this.dtTxt,
      required this.sys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dt, 'ForecastItemModel', 'dt');
    BuiltValueNullFieldError.checkNotNull(main, 'ForecastItemModel', 'main');
    BuiltValueNullFieldError.checkNotNull(
        weather, 'ForecastItemModel', 'weather');
    BuiltValueNullFieldError.checkNotNull(
        clouds, 'ForecastItemModel', 'clouds');
    BuiltValueNullFieldError.checkNotNull(wind, 'ForecastItemModel', 'wind');
    BuiltValueNullFieldError.checkNotNull(
        visibility, 'ForecastItemModel', 'visibility');
    BuiltValueNullFieldError.checkNotNull(pop, 'ForecastItemModel', 'pop');
    BuiltValueNullFieldError.checkNotNull(dtTxt, 'ForecastItemModel', 'dtTxt');
    BuiltValueNullFieldError.checkNotNull(sys, 'ForecastItemModel', 'sys');
  }

  @override
  ForecastItemModel rebuild(void Function(ForecastItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastItemModelBuilder toBuilder() =>
      new ForecastItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastItemModel &&
        dt == other.dt &&
        main == other.main &&
        weather == other.weather &&
        clouds == other.clouds &&
        wind == other.wind &&
        visibility == other.visibility &&
        pop == other.pop &&
        rain == other.rain &&
        snow == other.snow &&
        dtTxt == other.dtTxt &&
        sys == other.sys;
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
                                    $jc($jc($jc(0, dt.hashCode), main.hashCode),
                                        weather.hashCode),
                                    clouds.hashCode),
                                wind.hashCode),
                            visibility.hashCode),
                        pop.hashCode),
                    rain.hashCode),
                snow.hashCode),
            dtTxt.hashCode),
        sys.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastItemModel')
          ..add('dt', dt)
          ..add('main', main)
          ..add('weather', weather)
          ..add('clouds', clouds)
          ..add('wind', wind)
          ..add('visibility', visibility)
          ..add('pop', pop)
          ..add('rain', rain)
          ..add('snow', snow)
          ..add('dtTxt', dtTxt)
          ..add('sys', sys))
        .toString();
  }
}

class ForecastItemModelBuilder
    implements Builder<ForecastItemModel, ForecastItemModelBuilder> {
  _$ForecastItemModel? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  WeatherMainModelBuilder? _main;
  WeatherMainModelBuilder get main =>
      _$this._main ??= new WeatherMainModelBuilder();
  set main(WeatherMainModelBuilder? main) => _$this._main = main;

  ListBuilder<WeatherModel>? _weather;
  ListBuilder<WeatherModel> get weather =>
      _$this._weather ??= new ListBuilder<WeatherModel>();
  set weather(ListBuilder<WeatherModel>? weather) => _$this._weather = weather;

  CloudsModelBuilder? _clouds;
  CloudsModelBuilder get clouds => _$this._clouds ??= new CloudsModelBuilder();
  set clouds(CloudsModelBuilder? clouds) => _$this._clouds = clouds;

  WindModelBuilder? _wind;
  WindModelBuilder get wind => _$this._wind ??= new WindModelBuilder();
  set wind(WindModelBuilder? wind) => _$this._wind = wind;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  PrecipitationModelBuilder? _rain;
  PrecipitationModelBuilder get rain =>
      _$this._rain ??= new PrecipitationModelBuilder();
  set rain(PrecipitationModelBuilder? rain) => _$this._rain = rain;

  PrecipitationModelBuilder? _snow;
  PrecipitationModelBuilder get snow =>
      _$this._snow ??= new PrecipitationModelBuilder();
  set snow(PrecipitationModelBuilder? snow) => _$this._snow = snow;

  String? _dtTxt;
  String? get dtTxt => _$this._dtTxt;
  set dtTxt(String? dtTxt) => _$this._dtTxt = dtTxt;

  DayPartModelBuilder? _sys;
  DayPartModelBuilder get sys => _$this._sys ??= new DayPartModelBuilder();
  set sys(DayPartModelBuilder? sys) => _$this._sys = sys;

  ForecastItemModelBuilder();

  ForecastItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _main = $v.main.toBuilder();
      _weather = $v.weather.toBuilder();
      _clouds = $v.clouds.toBuilder();
      _wind = $v.wind.toBuilder();
      _visibility = $v.visibility;
      _pop = $v.pop;
      _rain = $v.rain?.toBuilder();
      _snow = $v.snow?.toBuilder();
      _dtTxt = $v.dtTxt;
      _sys = $v.sys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForecastItemModel;
  }

  @override
  void update(void Function(ForecastItemModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastItemModel build() {
    _$ForecastItemModel _$result;
    try {
      _$result = _$v ??
          new _$ForecastItemModel._(
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, 'ForecastItemModel', 'dt'),
              main: main.build(),
              weather: weather.build(),
              clouds: clouds.build(),
              wind: wind.build(),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, 'ForecastItemModel', 'visibility'),
              pop: BuiltValueNullFieldError.checkNotNull(
                  pop, 'ForecastItemModel', 'pop'),
              rain: _rain?.build(),
              snow: _snow?.build(),
              dtTxt: BuiltValueNullFieldError.checkNotNull(
                  dtTxt, 'ForecastItemModel', 'dtTxt'),
              sys: sys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        main.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'clouds';
        clouds.build();
        _$failedField = 'wind';
        wind.build();

        _$failedField = 'rain';
        _rain?.build();
        _$failedField = 'snow';
        _snow?.build();

        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastItemModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
