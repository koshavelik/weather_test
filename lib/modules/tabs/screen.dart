import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/modules/forecast/screen.dart';
import 'package:weather_test/modules/tabs/logic.dart';
import 'package:weather_test/modules/today/screen.dart';

class TabsScreen extends StatelessWidget {
  final logic = Get.put(Injector.resolve<TabsLogic>());
  final state = Get.find<TabsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetX(
          init: logic,
          builder: (logic) {
            return IndexedStack(
              index: state.tabIndex.value,
              children: [
                TodayScreen(),
                ForecastScreen(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: GetX(
        init: logic,
        builder: (logic) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.wb_sunny_outlined),
                label: 'Today',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cloud),
                label: 'Forecast',
              ),
            ],
            currentIndex: state.tabIndex.value,
            onTap: _handleChangeTab,
          );
        },
      ),
    );
  }

  //
  // Widget _buildTabsBar(TabsLogic controller) {
  //
  // }

  void _handleChangeTab(int index) {
    logic.changeTabIndex(index);
  }
}
