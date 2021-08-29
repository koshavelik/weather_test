// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastState extends ForecastState {
  @override
  final bool isLoading;
  @override
  final ForecastModel? forecast;
  @override
  final BuiltList<String> errors;

  factory _$ForecastState([void Function(ForecastStateBuilder)? updates]) =>
      (new ForecastStateBuilder()..update(updates)).build();

  _$ForecastState._(
      {required this.isLoading, this.forecast, required this.errors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'ForecastState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(errors, 'ForecastState', 'errors');
  }

  @override
  ForecastState rebuild(void Function(ForecastStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastStateBuilder toBuilder() => new ForecastStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastState &&
        isLoading == other.isLoading &&
        forecast == other.forecast &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isLoading.hashCode), forecast.hashCode), errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastState')
          ..add('isLoading', isLoading)
          ..add('forecast', forecast)
          ..add('errors', errors))
        .toString();
  }
}

class ForecastStateBuilder
    implements Builder<ForecastState, ForecastStateBuilder> {
  _$ForecastState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ForecastModelBuilder? _forecast;
  ForecastModelBuilder get forecast =>
      _$this._forecast ??= new ForecastModelBuilder();
  set forecast(ForecastModelBuilder? forecast) => _$this._forecast = forecast;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  ForecastStateBuilder() {
    ForecastState._initializeBuilder(this);
  }

  ForecastStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _forecast = $v.forecast?.toBuilder();
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForecastState;
  }

  @override
  void update(void Function(ForecastStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastState build() {
    _$ForecastState _$result;
    try {
      _$result = _$v ??
          new _$ForecastState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'ForecastState', 'isLoading'),
              forecast: _forecast?.build(),
              errors: errors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecast';
        _forecast?.build();
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
