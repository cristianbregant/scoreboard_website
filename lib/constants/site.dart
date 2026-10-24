/// Contacts and links shown on the site. Change them before publishing.
abstract final class Site {
  static const String name = 'Scoreboard';

  /// Public address of the site, without trailing slash. Social previews
  /// need absolute URLs. The deploy workflow sets it with
  /// `--dart-define=SITE_URL=…`; local builds use `jaspr serve`'s address.
  static const String url = String.fromEnvironment('SITE_URL', defaultValue: 'http://localhost:8080');

  /// Path the site is served from, e.g. `/scoreboard_website/` on GitHub
  /// Pages. Every link and image is relative to it.
  static String get basePath {
    final path = Uri.parse(url).path;
    return path.endsWith('/') ? path : '$path/';
  }

  /// Where demo requests go.
  static const String contactEmail = 'cristian.bregant94@gmail.com';

  static const String demoMailto =
      'mailto:$contactEmail?subject=Richiesta%20demo%20Scoreboard';

  static const String releasesUrl =
      'https://github.com/cristianbregant/scoreboard/releases';
}
