// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForecastModel> _$forecastModelSerializer =
    new _$ForecastModelSerializer();

class _$ForecastModelSerializer implements StructuredSerializer<ForecastModel> {
  @override
  final Iterable<Type> types = const [ForecastModel, _$ForecastModel];
  @override
  final String wireName = 'ForecastModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ForecastModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ForecastItemModel)])),
      'city',
      serializers.serialize(object.city,
          specifiedType: const FullType(CityModel)),
    ];

    return result;
  }

  @override
  ForecastModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ForecastItemModel)]))!
              as BuiltList<Object?>);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
              specifiedType: const FullType(CityModel))! as CityModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastModel extends ForecastModel {
  @override
  final BuiltList<ForecastItemModel> list;
  @override
  final CityModel city;

  factory _$ForecastModel([void Function(ForecastModelBuilder)? updates]) =>
      (new ForecastModelBuilder()..update(updates)).build();

  _$ForecastModel._({required this.list, required this.city}) : super._() {
    BuiltValueNullFieldError.checkNotNull(list, 'ForecastModel', 'list');
    BuiltValueNullFieldError.checkNotNull(city, 'ForecastModel', 'city');
  }

  @override
  ForecastModel rebuild(void Function(ForecastModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastModelBuilder toBuilder() => new ForecastModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastModel && list == other.list && city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, list.hashCode), city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastModel')
          ..add('list', list)
          ..add('city', city))
        .toString();
  }
}

class ForecastModelBuilder
    implements Builder<ForecastModel, ForecastModelBuilder> {
  _$ForecastModel? _$v;

  ListBuilder<ForecastItemModel>? _list;
  ListBuilder<ForecastItemModel> get list =>
      _$this._list ??= new ListBuilder<ForecastItemModel>();
  set list(ListBuilder<ForecastItemModel>? list) => _$this._list = list;

  CityModelBuilder? _city;
  CityModelBuilder get city => _$this._city ??= new CityModelBuilder();
  set city(CityModelBuilder? city) => _$this._city = city;

  ForecastModelBuilder();

  ForecastModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _city = $v.city.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForecastModel;
  }

  @override
  void update(void Function(ForecastModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastModel build() {
    _$ForecastModel _$result;
    try {
      _$result =
          _$v ?? new _$ForecastModel._(list: list.build(), city: city.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
        _$failedField = 'city';
        city.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
