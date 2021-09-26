import 'package:get/get.dart';
import 'package:weather_test/modules/tabs/state.dart';

class TabsLogic extends GetxController {
  final TabsState state = TabsState();

  void changeTabIndex(int index) {
    state.tabIndex.value = index;
  }
}
