import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:trackizer_demo_app/app/themes/themes.dart';
import 'package:trackizer_demo_app/screens/home/home_location.dart';

/// App Widget
class App extends StatelessWidget {
  /// App Widget
  App({super.key});

  final _routerDelegate = BeamerDelegate(
    initialPath: HomeLocation().pathPatterns.first,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
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
          SizedBox(
            height: 812,
            child: child,
          ),
          defaultScale: true,
          minWidth: 375,
          maxWidth: 375,
          defaultName: MOBILE,
          breakpoints: const [
            ResponsiveBreakpoint.resize(375),
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
