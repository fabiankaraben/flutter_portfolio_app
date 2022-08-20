import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/screens/dashboard/widgets/about_me_section.dart';
import 'package:flutter_portfolio_app/screens/dashboard/widgets/contact_section.dart';
import 'package:flutter_portfolio_app/screens/dashboard/widgets/decorated_background.dart';
import 'package:flutter_portfolio_app/screens/dashboard/widgets/header.dart';
import 'package:flutter_portfolio_app/screens/dashboard/widgets/hero_section.dart';
import 'package:flutter_portfolio_app/screens/dashboard/widgets/portfolio_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Dashboard Screen
class DashboardScreen extends ConsumerWidget {
  /// Dashboard Screen
  DashboardScreen({super.key});

  final _mainScrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Scrollbar(
        controller: _mainScrollController,
        thumbVisibility: true,
        child: DecoratedBackground(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 24),
              controller: _mainScrollController,
              child: Column(
                children: const [
                  Header(),
                  HeroSection(),
                  SizedBox(height: 100),
                  PortfolioSection(),
                  SizedBox(height: 100),
                  AboutMeSection(),
                  SizedBox(height: 100),
                  ContactSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
