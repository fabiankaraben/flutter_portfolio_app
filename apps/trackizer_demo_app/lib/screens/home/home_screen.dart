import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trackizer_demo_app/screens/home/widgets/bottom_bar.dart';
import 'package:trackizer_demo_app/screens/home/widgets/hero_section.dart';
import 'package:trackizer_demo_app/screens/home/widgets/service_tabs.dart';

/// Home Screen
class HomeScreen extends ConsumerWidget {
  /// Home Screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: const [
          HeroSection(),
          Expanded(
            child: ServiceTabs(),
          ),
          HomeBottomBar(),
        ],
      ),
    );
  }
}
