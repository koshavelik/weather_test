import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_test/bloc/view_action.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  final PublishSubject<ViewAction> _stream = PublishSubject();
  final List<StreamSubscription<dynamic>> subscriptions = [];

  late Stream<ViewAction> viewEvents;

  BaseBloc(State initialState) : super(initialState) {
    viewEvents = _stream;
  }

  @protected
  void dispatchViewEvent(ViewAction target) {
    _stream.add(target);
  }

  @override
  Future<void> close() {
    for (final subscription in subscriptions) {
      subscription.cancel();
    }
    _stream.close();
    return super.close();
  }
}