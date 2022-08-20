import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_portfolio_app/app/app.dart';
import 'package:flutter_portfolio_app/utils/url_strategy/url_strategy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // This method required for initializations before calling runApp.
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Preserve Native Splash during initializations
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // For web: use URLs without '#' character
  usePathUrlStrategy();

  // Remove Native Splash
  FlutterNativeSplash.remove();

  // Run the App
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    ProviderScope(child: App()),
  );
}
