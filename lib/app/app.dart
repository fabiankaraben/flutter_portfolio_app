import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/app/themes/themes.dart';
import 'package:flutter_portfolio_app/screens/dashboard/dashboard_location.dart';

/// App Widget
class App extends StatelessWidget {
  /// App Widget
  App({super.key});

  final _routerDelegate = BeamerDelegate(
    initialPath: DashboardLocation().pathPatterns.first,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        DashboardLocation(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: LightTheme.data,
      dark: DarkTheme.data,
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp.router(
        routerDelegate: _routerDelegate,
        routeInformationParser: BeamerParser(),
        backButtonDispatcher: BeamerBackButtonDispatcher(
          delegate: _routerDelegate,
        ),
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
