import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/screenshot.dart';
import '../constants/site.dart';

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'top', classes: 'hero', [
      div(classes: 'container', [
        div(classes: 'hero-copy', [
          span(classes: 'pill', [const Icon(AppIcon.sparkles, size: 14), .text('Riconoscimento sul lavoro')]),
          h1([
            .text('Ogni traguardo del tuo team, '),
            span(classes: 'accent', [.text('da collezionare')]),
            .text('.'),
          ]),
          p(classes: 'lead', [
            .text(
              'Scoreboard trasforma i successi delle persone in achievement verificati dall’azienda '
              'e in riconoscimenti tra colleghi. Tutto diventa XP, livelli e classifiche, '
              'in un’app desktop che il team apre volentieri.',
            ),
          ]),
          div(classes: 'hero-actions', [
            a(href: Site.demoMailto, classes: 'button', [.text('Richiedi una demo'), const Icon(AppIcon.arrowRight, size: 18)]),
            a(href: '#funzionalita', classes: 'button button-ghost', [.text('Scopri le funzionalità')]),
          ]),
          ul(classes: 'hero-points', [
            for (final point in const ['macOS, Windows e Linux', 'In 5 lingue', 'Pronto per le richieste GDPR'])
              li([const Icon(AppIcon.check, size: 16), .text(point)]),
          ]),
        ]),
        const Screenshot(
          'achievements',
          alt: 'La schermata degli achievement: carte collezionabili con XP, livello e badge verificati',
          eager: true,
        ),
      ]),
    ]);
  }
}
