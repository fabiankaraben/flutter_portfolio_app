import 'package:url_launcher/url_launcher.dart' as lu;

/// Launch external URL
Future<void> launchUrl(String url) async {
  final uri = Uri.parse(url);
  if (!await lu.launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
}
