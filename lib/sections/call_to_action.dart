import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../constants/site.dart';
import '../l10n/l10n.dart';

class CallToAction extends StatelessComponent {
  const CallToAction({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(classes: 'section', [
      div(classes: 'container', [
        div(classes: 'cta', [
          span(classes: 'logo-mark large', [const Icon(AppIcon.trophy, size: 28)]),
          h2([.text(strings.ctaTitle)]),
          p(classes: 'lead', [.text(strings.ctaLead)]),
          div(classes: 'hero-actions', [
            a(href: Site.demoMailto(strings.demoSubject), classes: 'button', [
              .text(strings.requestDemo),
              const Icon(AppIcon.arrowRight, size: 18),
            ]),
            a(href: Site.releasesUrl, classes: 'button button-ghost', [.text(strings.ctaDownload)]),
          ]),
        ]),
      ]),
    ]);
  }
}
