import 'package:url_launcher/url_launcher.dart' as url_package;

class UrlHelper {

  static Future<void> launchUrl(String url) async {
    final Uri urlUri = Uri.parse(url);
    if (!await url_package.launchUrl(urlUri)) {
      throw Exception('Could not launch $urlUri');
    }
  }
}