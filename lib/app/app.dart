import 'package:beamer/beamer.dart';
import 'package:blue_trade_app/screens/dashboard/dashboard_location.dart';
import 'package:flutter/material.dart';

/// App Widget
class App extends StatelessWidget {
  /// App Widget
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final _routerDelegate = BeamerDelegate(
      initialPath: DashboardLocation().pathPatterns.first,
      locationBuilder: BeamerLocationBuilder(
        beamLocations: [
          DashboardLocation(),
        ],
      ),
    );

    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: _routerDelegate,
      ),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF034A03),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
