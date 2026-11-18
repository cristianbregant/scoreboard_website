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
        // Inter for reading, Geist for display: the app's two typefaces,
        // served with the site (see styles.css). The above-the-fold ones
        // load right away.
        for (final font in ['Inter-Regular', 'Geist-SemiBold'])
          link(rel: 'preload', href: 'fonts/$font.woff2', attributes: {'as': 'font', 'type': 'font/woff2', 'crossorigin': ''}),
        link(rel: 'stylesheet', href: 'styles.css'),
      ],
      body: const App(),
    ),
  );
}
