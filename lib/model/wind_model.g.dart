// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WindModel> _$windModelSerializer = new _$WindModelSerializer();

class _$WindModelSerializer implements StructuredSerializer<WindModel> {
  @override
  final Iterable<Type> types = const [WindModel, _$WindModel];
  @override
  final String wireName = 'WindModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WindModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(double)),
      'deg',
      serializers.serialize(object.deg, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WindModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WindModel extends WindModel {
  @override
  final double speed;
  @override
  final int deg;

  factory _$WindModel([void Function(WindModelBuilder)? updates]) =>
      (new WindModelBuilder()..update(updates)).build();

  _$WindModel._({required this.speed, required this.deg}) : super._() {
    BuiltValueNullFieldError.checkNotNull(speed, 'WindModel', 'speed');
    BuiltValueNullFieldError.checkNotNull(deg, 'WindModel', 'deg');
  }

  @override
  WindModel rebuild(void Function(WindModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindModelBuilder toBuilder() => new WindModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindModel && speed == other.speed && deg == other.deg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, speed.hashCode), deg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WindModel')
          ..add('speed', speed)
          ..add('deg', deg))
        .toString();
  }
}

class WindModelBuilder implements Builder<WindModel, WindModelBuilder> {
  _$WindModel? _$v;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  int? _deg;
  int? get deg => _$this._deg;
  set deg(int? deg) => _$this._deg = deg;

  WindModelBuilder();

  WindModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speed = $v.speed;
      _deg = $v.deg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WindModel;
  }

  @override
  void update(void Function(WindModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WindModel build() {
    final _$result = _$v ??
        new _$WindModel._(
            speed: BuiltValueNullFieldError.checkNotNull(
                speed, 'WindModel', 'speed'),
            deg:
                BuiltValueNullFieldError.checkNotNull(deg, 'WindModel', 'deg'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
