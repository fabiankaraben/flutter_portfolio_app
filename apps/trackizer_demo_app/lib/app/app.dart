import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:beamer/beamer.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:trackizer_demo_app/app/themes/styles.dart';
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
    final botToastBuilder = BotToastInit();

    return AdaptiveTheme(
      light: LightTheme.data,
      dark: DarkTheme.data,
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp.router(
        builder: (context, child) {
          child = botToastBuilder(context, child);

          return ResponsiveWrapper.builder(
            _DemoViewer(
              child: child,
            ),
            defaultScale: true,
            minWidth: 375,
            maxWidth: 375,
            defaultName: MOBILE,
            breakpoints: const [
              ResponsiveBreakpoint.resize(375),
            ],
            backgroundColor: CustomColors.gray10,
          );
        },
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

class _DemoViewer extends StatelessWidget {
  const _DemoViewer({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 812,
        child: child,
      ),
    );
  }
}
