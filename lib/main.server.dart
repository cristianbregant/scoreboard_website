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

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      // Title, language and per-language tags are set by each page.
      base: Site.basePath,
      meta: {'theme-color': '#0e0f11', 'twitter:card': 'summary_large_image'},
      head: [
        link(rel: 'icon', href: 'favicon.svg', type: 'image/svg+xml'),
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(
          rel: 'stylesheet',
          // Inter for reading, Geist for display: the app's two typefaces.
          href: 'https://fonts.googleapis.com/css2?family=Geist:wght@500;600;700&family=Inter:wght@400;500;600&display=swap',
        ),
        link(rel: 'stylesheet', href: 'styles.css'),
      ],
      body: const App(),
    ),
  );
}
