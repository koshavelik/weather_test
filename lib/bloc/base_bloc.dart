import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

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

  @protected
  void showError(String error) {
    dispatchViewEvent(ShowError(error));
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

abstract class ViewAction {}

class ShowError extends ViewAction {
  final String error;

  ShowError(this.error);
}
