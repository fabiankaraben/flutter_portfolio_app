import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio_app/screens/dashboard/dashboard_screen.dart';

/// Dashboard screen location
class DashboardLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('dashboard'),
          title: 'Dashboard',
          child: DashboardScreen(),
          type: BeamPageType.noTransition,
        ),
      ];
}
