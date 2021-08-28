// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_part_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DayPartModel> _$dayPartModelSerializer =
    new _$DayPartModelSerializer();

class _$DayPartModelSerializer implements StructuredSerializer<DayPartModel> {
  @override
  final Iterable<Type> types = const [DayPartModel, _$DayPartModel];
  @override
  final String wireName = 'DayPartModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DayPartModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pod',
      serializers.serialize(object.pod, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DayPartModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayPartModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pod':
          result.pod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DayPartModel extends DayPartModel {
  @override
  final String pod;

  factory _$DayPartModel([void Function(DayPartModelBuilder)? updates]) =>
      (new DayPartModelBuilder()..update(updates)).build();

  _$DayPartModel._({required this.pod}) : super._() {
    BuiltValueNullFieldError.checkNotNull(pod, 'DayPartModel', 'pod');
  }

  @override
  DayPartModel rebuild(void Function(DayPartModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayPartModelBuilder toBuilder() => new DayPartModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DayPartModel && pod == other.pod;
  }

  @override
  int get hashCode {
    return $jf($jc(0, pod.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DayPartModel')..add('pod', pod))
        .toString();
  }
}

class DayPartModelBuilder
    implements Builder<DayPartModel, DayPartModelBuilder> {
  _$DayPartModel? _$v;

  String? _pod;
  String? get pod => _$this._pod;
  set pod(String? pod) => _$this._pod = pod;

  DayPartModelBuilder();

  DayPartModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pod = $v.pod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DayPartModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DayPartModel;
  }

  @override
  void update(void Function(DayPartModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DayPartModel build() {
    final _$result = _$v ??
        new _$DayPartModel._(
            pod: BuiltValueNullFieldError.checkNotNull(
                pod, 'DayPartModel', 'pod'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
