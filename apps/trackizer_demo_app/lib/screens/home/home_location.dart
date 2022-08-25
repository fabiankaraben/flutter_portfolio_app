import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:trackizer_demo_app/screens/home/home_screen.dart';

/// Home screen location
class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          child: HomeScreen(),
          type: BeamPageType.noTransition,
        ),
      ];
}
