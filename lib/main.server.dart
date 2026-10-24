/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';

import 'app.dart';
import 'constants/site.dart';
// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

const _title = 'Scoreboard – Riconoscimento sul lavoro';

const _description =
    'Scoreboard è l’app desktop per il riconoscimento sul lavoro: achievement verificati '
    'dall’azienda e riconoscimenti tra colleghi, con XP, livelli e classifiche.';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      title: _title,
      lang: 'it',
      base: Site.basePath,
      meta: {
        'description': _description,
        'theme-color': '#111214',
        'twitter:card': 'summary_large_image',
      },
      head: [
        // Open Graph uses `property`, not `name`; LinkedIn reads only that.
        for (final (property, content) in const [
          ('og:title', _title),
          ('og:description', _description),
          ('og:type', 'website'),
          ('og:url', '${Site.url}/'),
          ('og:image', '${Site.url}/images/social-preview.jpg'),
        ])
          meta(attributes: {'property': property}, content: content),
        link(rel: 'icon', href: 'favicon.svg', type: 'image/svg+xml'),
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap',
        ),
        link(rel: 'stylesheet', href: 'styles.css'),
      ],
      body: const App(),
    ),
  );
}
