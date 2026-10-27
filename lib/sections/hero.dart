import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/screenshot.dart';
import '../constants/site.dart';
import '../l10n/l10n.dart';

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(id: 'top', classes: 'hero', [
      div(classes: 'container', [
        div(classes: 'hero-copy', [
          span(classes: 'eyebrow', [.text(strings.heroPill)]),
          h1([
            .text(strings.heroTitleStart),
            span(classes: 'accent', [.text(strings.heroTitleAccent)]),
            .text(strings.heroTitleEnd),
          ]),
          p(classes: 'lead', [.text(strings.heroLead)]),
          div(classes: 'hero-actions', [
            a(href: Site.demoMailto(strings.demoSubject), classes: 'button', [
              .text(strings.requestDemo),
              const Icon(AppIcon.arrowRight, size: 18),
            ]),
            a(href: context.anchor('features'), classes: 'button button-ghost', [.text(strings.heroSecondaryCta)]),
          ]),
        ]),
        // The app's own scoreboard strip: a few honest numbers.
        dl(classes: 'stat-strip', [
          for (final (figure, label) in strings.heroStats)
            div(classes: 'stat', [
              dt([.text(label)]),
              dd([.text(figure)]),
            ]),
        ]),
        Screenshot('achievements', alt: strings.heroImageAlt, eager: true),
      ]),
    ]);
  }
}
