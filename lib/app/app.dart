import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/app/themes/themes.dart';
import 'package:flutter_portfolio_app/screens/dashboard/dashboard_location.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

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
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          defaultScale: true,
          minWidth: 360,
          defaultName: MOBILE,
          breakpoints: const [
            ResponsiveBreakpoint.resize(360),
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(640, name: 'MOBILE_LARGE'),
            // ResponsiveBreakpoint.autoScale(850, name: TABLET),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          // background: Container(
          //   color: Color(0xFFF5F5F5),
          // ),
        ),
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
