import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/site.dart';
import 'site_header.dart';

class SiteFooter extends StatelessComponent {
  const SiteFooter({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'container footer-inner', [
        div([
          const Logo(),
          p(classes: 'muted', [.text('Riconoscimento sul lavoro, per macOS, Windows e Linux.')]),
        ]),
        nav(classes: 'footer-links', [
          a(href: '#funzionalita', [.text('Funzionalità')]),
          a(href: '#console', [.text('Per le aziende')]),
          a(href: Site.releasesUrl, [.text('Download')]),
          a(href: 'mailto:${Site.contactEmail}', [.text(Site.contactEmail)]),
        ]),
      ]),
      div(classes: 'container footer-bottom muted', [
        .text('© ${DateTime.now().year} ${Site.name}. Rilasciato con licenza Apache 2.0.'),
      ]),
    ]);
  }
}
