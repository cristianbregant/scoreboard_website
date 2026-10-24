import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'l10n/l10n.dart';
import 'pages/landing_page.dart';

/// One landing page per language. The site is fully pre-rendered: no
/// component runs on the client, so the published site is plain HTML and CSS.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        for (final locale in SiteLocale.values)
          Route(path: locale.route, builder: (context, state) => LandingPage(locale)),
      ],
    );
  }
}
