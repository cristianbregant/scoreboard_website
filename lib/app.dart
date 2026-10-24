import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'components/site_footer.dart';
import 'components/site_header.dart';
import 'sections/call_to_action.dart';
import 'sections/console.dart';
import 'sections/faq.dart';
import 'sections/features.dart';
import 'sections/gallery.dart';
import 'sections/hero.dart';
import 'sections/how_it_works.dart';
import 'sections/quality.dart';
import 'sections/recognition_types.dart';

/// The landing page. It is fully pre-rendered: no component runs on the
/// client, so the published site is plain HTML and CSS.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return .fragment([
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
    ]);
  }
}
