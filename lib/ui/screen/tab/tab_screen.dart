import 'package:flutter/material.dart';
import 'package:weather_test/router.dart';

class TabScreen extends StatelessWidget {
  const TabScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter(
        routes: const [
          CurrentWeatherRouter(),
          ForecastRouter()
        ],
        duration: const Duration(milliseconds: 400),
        builder: _buildTabsBar,
      ),
    );
  }

  Widget _buildTabsBar(BuildContext context, Widget child, Animation<double> animation) {
    final tabsRouter = context.tabsRouter;

    return Scaffold(
      body: FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
      ),
    );
  }
}
