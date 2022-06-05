import 'package:portfolio/utils/uri_launch.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherUtils implements LauncherUtil {
  @override
  launchEmail(String email) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{'subject': 'Hii Rahul'}),
    );

    launchUrl(emailLaunchUri);
  }

  @override
  Future<void> launchCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Future<void> launchWatsapp(String phoneNumber) async {
    final uri = "https://wa.me/$phoneNumber/?text=Hi Rahul";
    if (!await launchUrl(
      Uri.parse(uri),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Future<void> launchWeb(String link) async {
    if (!await launchUrl(
      Uri.parse(link),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $link';
    }
  }
}
