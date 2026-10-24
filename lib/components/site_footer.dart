import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/site.dart';
import '../l10n/l10n.dart';
import 'site_header.dart';

class SiteFooter extends StatelessComponent {
  const SiteFooter({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return footer(classes: 'site-footer', [
      div(classes: 'container footer-inner', [
        div([
          const Logo(),
          p(classes: 'muted', [.text(strings.footerTagline)]),
        ]),
        nav(classes: 'footer-links', [
          a(href: context.anchor('features'), [.text(strings.navFeatures)]),
          a(href: context.anchor('companies'), [.text(strings.navBusiness)]),
          a(href: Site.releasesUrl, [.text(strings.footerDownload)]),
          a(href: 'mailto:${Site.contactEmail}', [.text(Site.contactEmail)]),
        ]),
      ]),
      div(classes: 'container footer-bottom muted', [
        span([.text('© ${DateTime.now().year} ${Site.name}. ${strings.footerLicense}')]),
        nav(classes: 'footer-languages', [
          for (final locale in SiteLocale.values)
            a(
              href: locale.path.isEmpty ? './' : locale.path,
              attributes: {'hreflang': locale.code, 'lang': locale.code},
              [.text(locale.name)],
            ),
        ]),
      ]),
    ]);
  }
}
