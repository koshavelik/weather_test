import 'package:flutter/foundation.dart';

abstract class ViewAction {}

@immutable
class DisplayMessage extends ViewAction {
  final String message;

  DisplayMessage(this.message);

  @override
  bool operator ==(other) {
    if (other is DisplayMessage) {
      return other.message == message;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => message.hashCode;
}

class CloseScreen extends ViewAction {}

@immutable
class NavigateScreen<T> extends ViewAction {
  final T target;

  NavigateScreen(this.target);

  @override
  bool operator ==(other) {
    if (other is NavigateScreen) {
      return other.target == target;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => target.hashCode;
}
