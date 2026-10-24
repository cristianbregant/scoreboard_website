import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../constants/site.dart';

class CallToAction extends StatelessComponent {
  const CallToAction({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'section', [
      div(classes: 'container', [
        div(classes: 'cta', [
          span(classes: 'logo-mark large', [const Icon(AppIcon.trophy, size: 28)]),
          h2([.text('Porta Scoreboard nella tua azienda')]),
          p(classes: 'lead', [
            .text('Ti mostriamo l’app con i dati di una vera azienda demo e ti aiutiamo a impostare il primo catalogo.'),
          ]),
          div(classes: 'hero-actions', [
            a(href: Site.demoMailto, classes: 'button', [.text('Richiedi una demo'), const Icon(AppIcon.arrowRight, size: 18)]),
            a(href: Site.releasesUrl, classes: 'button button-ghost', [.text('Scarica l’app')]),
          ]),
        ]),
      ]),
    ]);
  }
}
