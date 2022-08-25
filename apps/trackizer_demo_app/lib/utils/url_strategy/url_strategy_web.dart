import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// url_strategy for web platforms
void usePathUrlStrategy() {
  setUrlStrategy(PathUrlStrategy());
}
