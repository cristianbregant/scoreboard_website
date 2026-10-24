import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/site.dart';
import '../l10n/l10n.dart';
import 'icon.dart';

class Logo extends StatelessComponent {
  const Logo({super.key});

  @override
  Component build(BuildContext context) {
    return a(href: context.anchor('top'), classes: 'logo', [
      span(classes: 'logo-mark', [const Icon(AppIcon.trophy, size: 18)]),
      span([.text(Site.name)]),
    ]);
  }
}

class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return header(classes: 'site-header', [
      div(classes: 'container header-inner', [
        const Logo(),
        nav(classes: 'header-nav', [
          for (final (id, label) in [
            ('recognition', strings.navRecognition),
            ('features', strings.navFeatures),
            ('companies', strings.navBusiness),
            ('faq', strings.navFaq),
          ])
            a(href: context.anchor(id), [.text(label)]),
        ]),
        const LanguageMenu(),
        a(href: Site.demoMailto(strings.demoSubject), classes: 'button button-small', [.text(strings.requestDemo)]),
      ]),
    ]);
  }
}

/// A dropdown of the other languages, built on `<details>` so it works
/// without JavaScript.
class LanguageMenu extends StatelessComponent {
  const LanguageMenu({super.key});

  @override
  Component build(BuildContext context) {
    final current = context.locale;
    return details(classes: 'language-menu', [
      summary(attributes: {'aria-label': current.strings.language}, [
        const Icon(AppIcon.globe, size: 16),
        span([.text(current.code.toUpperCase())]),
      ]),
      ul([
        for (final locale in SiteLocale.values)
          li([
            a(
              href: locale.path.isEmpty ? './' : locale.path,
              attributes: {
                'hreflang': locale.code,
                'lang': locale.code,
                if (locale == current) 'aria-current': 'page',
              },
              [.text(locale.name)],
            ),
          ]),
      ]),
    ]);
  }
}
