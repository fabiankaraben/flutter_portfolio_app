import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:blue_trade_app/screens/dashboard/dashboard_screen.dart';

/// Dashboard screen location
class DashboardLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/dashboard'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey('dashboard'),
          title: 'Dashboard',
          child: DashboardScreen(),
          type: BeamPageType.fadeTransition,
        ),
      ];
}
