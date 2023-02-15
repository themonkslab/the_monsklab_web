import 'package:url_launcher/url_launcher.dart';

class Helpers {
  static launchDiscord() async {
    final uri = Uri.parse('https://discord.gg/vpPVf7guPC');
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
    throw Exception("canLaunchUrl didn't work");
  }
}
