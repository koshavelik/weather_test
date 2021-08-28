// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  WeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

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
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$WeatherModel([void Function(WeatherModelBuilder)? updates]) =>
      (new WeatherModelBuilder()..update(updates)).build();

  _$WeatherModel._(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'WeatherModel', 'id');
    BuiltValueNullFieldError.checkNotNull(main, 'WeatherModel', 'main');
    BuiltValueNullFieldError.checkNotNull(
        description, 'WeatherModel', 'description');
    BuiltValueNullFieldError.checkNotNull(icon, 'WeatherModel', 'icon');
  }

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode),
        icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherModel')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherModel build() {
    final _$result = _$v ??
        new _$WeatherModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'WeatherModel', 'id'),
            main: BuiltValueNullFieldError.checkNotNull(
                main, 'WeatherModel', 'main'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'WeatherModel', 'description'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, 'WeatherModel', 'icon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
