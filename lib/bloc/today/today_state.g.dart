// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodayState extends TodayState {
  @override
  final CurrentWeatherModel? weather;
  @override
  final bool isLoading;
  @override
  final BuiltList<String> errors;

  factory _$TodayState([void Function(TodayStateBuilder)? updates]) =>
      (new TodayStateBuilder()..update(updates)).build();

  _$TodayState._({this.weather, required this.isLoading, required this.errors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'TodayState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(errors, 'TodayState', 'errors');
  }

  @override
  TodayState rebuild(void Function(TodayStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodayStateBuilder toBuilder() => new TodayStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodayState &&
        weather == other.weather &&
        isLoading == other.isLoading &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, weather.hashCode), isLoading.hashCode), errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodayState')
          ..add('weather', weather)
          ..add('isLoading', isLoading)
          ..add('errors', errors))
        .toString();
  }
}

class TodayStateBuilder implements Builder<TodayState, TodayStateBuilder> {
  _$TodayState? _$v;

  CurrentWeatherModelBuilder? _weather;
  CurrentWeatherModelBuilder get weather =>
      _$this._weather ??= new CurrentWeatherModelBuilder();
  set weather(CurrentWeatherModelBuilder? weather) => _$this._weather = weather;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  TodayStateBuilder() {
    TodayState._initializeBuilder(this);
  }

  TodayStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weather = $v.weather?.toBuilder();
      _isLoading = $v.isLoading;
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodayState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodayState;
  }

  @override
  void update(void Function(TodayStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodayState build() {
    _$TodayState _$result;
    try {
      _$result = _$v ??
          new _$TodayState._(
              weather: _weather?.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'TodayState', 'isLoading'),
              errors: errors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        _weather?.build();

        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodayState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
