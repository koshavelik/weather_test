// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoordModel> _$coordModelSerializer = new _$CoordModelSerializer();

class _$CoordModelSerializer implements StructuredSerializer<CoordModel> {
  @override
  final Iterable<Type> types = const [CoordModel, _$CoordModel];
  @override
  final String wireName = 'CoordModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoordModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CoordModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CoordModel extends CoordModel {
  @override
  final double lon;
  @override
  final double lat;

  factory _$CoordModel([void Function(CoordModelBuilder)? updates]) =>
      (new CoordModelBuilder()..update(updates)).build();

  _$CoordModel._({required this.lon, required this.lat}) : super._() {
    BuiltValueNullFieldError.checkNotNull(lon, 'CoordModel', 'lon');
    BuiltValueNullFieldError.checkNotNull(lat, 'CoordModel', 'lat');
  }

  @override
  CoordModel rebuild(void Function(CoordModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordModelBuilder toBuilder() => new CoordModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoordModel && lon == other.lon && lat == other.lat;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lon.hashCode), lat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoordModel')
          ..add('lon', lon)
          ..add('lat', lat))
        .toString();
  }
}

class CoordModelBuilder implements Builder<CoordModel, CoordModelBuilder> {
  _$CoordModel? _$v;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  CoordModelBuilder();

  CoordModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lon = $v.lon;
      _lat = $v.lat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoordModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoordModel;
  }

  @override
  void update(void Function(CoordModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoordModel build() {
    final _$result = _$v ??
        new _$CoordModel._(
            lon:
                BuiltValueNullFieldError.checkNotNull(lon, 'CoordModel', 'lon'),
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, 'CoordModel', 'lat'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
