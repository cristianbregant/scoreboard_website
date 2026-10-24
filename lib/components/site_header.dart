import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/site.dart';
import 'icon.dart';

class Logo extends StatelessComponent {
  const Logo({super.key});

  @override
  Component build(BuildContext context) {
    return a(href: '#top', classes: 'logo', [
      span(classes: 'logo-mark', [const Icon(AppIcon.trophy, size: 18)]),
      span([.text(Site.name)]),
    ]);
  }
}

class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  static const _links = [
    ('#riconoscimenti', 'Riconoscimenti'),
    ('#funzionalita', 'Funzionalità'),
    ('#console', 'Per le aziende'),
    ('#faq', 'FAQ'),
  ];

  @override
  Component build(BuildContext context) {
    return header(classes: 'site-header', [
      div(classes: 'container header-inner', [
        const Logo(),
        nav(classes: 'header-nav', [
          for (final (href, label) in _links) a(href: href, [.text(label)]),
        ]),
        a(href: Site.demoMailto, classes: 'button button-small', [.text('Richiedi una demo')]),
      ]),
    ]);
  }
}
