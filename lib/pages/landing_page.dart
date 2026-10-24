import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/site_footer.dart';
import '../components/site_header.dart';
import '../constants/site.dart';
import '../l10n/l10n.dart';
import '../sections/call_to_action.dart';
import '../sections/console.dart';
import '../sections/faq.dart';
import '../sections/features.dart';
import '../sections/gallery.dart';
import '../sections/hero.dart';
import '../sections/how_it_works.dart';
import '../sections/quality.dart';
import '../sections/recognition_types.dart';

/// The landing page in one language, with the tags search engines and
/// social networks use to find the other languages.
class LandingPage extends StatelessComponent {
  const LandingPage(this.locale, {super.key});

  final SiteLocale locale;

  @override
  Component build(BuildContext context) {
    final strings = locale.strings;
    return L10n(
      locale: locale,
      child: .fragment([
        Document.html(attributes: {'lang': locale.code}),
        Document.head(
          title: strings.metaTitle,
          meta: {'description': strings.metaDescription},
          children: [
            // Open Graph uses `property`, not `name`; LinkedIn reads only that.
            for (final (property, content) in [
              ('og:title', strings.metaTitle),
              ('og:description', strings.metaDescription),
              ('og:type', 'website'),
              ('og:url', _absoluteUrl(locale)),
              ('og:image', '${Site.url}/images/social-preview.jpg'),
              ('og:locale', locale.ogLocale),
            ])
              meta(attributes: {'property': property}, content: content),
            for (final other in SiteLocale.values)
              link(rel: 'alternate', href: _absoluteUrl(other), attributes: {'hreflang': other.code}),
            link(rel: 'alternate', href: _absoluteUrl(SiteLocale.main), attributes: {'hreflang': 'x-default'}),
            link(rel: 'canonical', href: _absoluteUrl(locale)),
          ],
        ),
        const SiteHeader(),
        main_([
          const Hero(),
          const RecognitionTypes(),
          const Features(),
          const Console(),
          const Gallery(),
          const HowItWorks(),
          const Quality(),
          const Faq(),
          const CallToAction(),
        ]),
        const SiteFooter(),
      ]),
    );
  }

  static String _absoluteUrl(SiteLocale locale) => '${Site.url}/${locale.path}';
}
