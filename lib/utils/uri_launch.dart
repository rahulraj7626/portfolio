abstract class LauncherUtil {
  launchEmail(String email);
  Future<void> launchCall(String number);
  Future<void> launchWatsapp(String number);
  Future<void> launchWeb(String link);
}
