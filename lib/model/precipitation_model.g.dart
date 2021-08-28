// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precipitation_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrecipitationModel> _$precipitationModelSerializer =
    new _$PrecipitationModelSerializer();

class _$PrecipitationModelSerializer
    implements StructuredSerializer<PrecipitationModel> {
  @override
  final Iterable<Type> types = const [PrecipitationModel, _$PrecipitationModel];
  @override
  final String wireName = 'PrecipitationModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrecipitationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.h1;
    if (value != null) {
      result
        ..add('h1')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.h3;
    if (value != null) {
      result
        ..add('h3')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PrecipitationModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrecipitationModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'h1':
          result.h1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'h3':
          result.h3 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$PrecipitationModel extends PrecipitationModel {
  @override
  final int? h1;
  @override
  final int? h3;

  factory _$PrecipitationModel(
          [void Function(PrecipitationModelBuilder)? updates]) =>
      (new PrecipitationModelBuilder()..update(updates)).build();

  _$PrecipitationModel._({this.h1, this.h3}) : super._();

  @override
  PrecipitationModel rebuild(
          void Function(PrecipitationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecipitationModelBuilder toBuilder() =>
      new PrecipitationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecipitationModel && h1 == other.h1 && h3 == other.h3;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, h1.hashCode), h3.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrecipitationModel')
          ..add('h1', h1)
          ..add('h3', h3))
        .toString();
  }
}

class PrecipitationModelBuilder
    implements Builder<PrecipitationModel, PrecipitationModelBuilder> {
  _$PrecipitationModel? _$v;

  int? _h1;
  int? get h1 => _$this._h1;
  set h1(int? h1) => _$this._h1 = h1;

  int? _h3;
  int? get h3 => _$this._h3;
  set h3(int? h3) => _$this._h3 = h3;

  PrecipitationModelBuilder();

  PrecipitationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _h1 = $v.h1;
      _h3 = $v.h3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecipitationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrecipitationModel;
  }

  @override
  void update(void Function(PrecipitationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrecipitationModel build() {
    final _$result = _$v ?? new _$PrecipitationModel._(h1: h1, h3: h3);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
