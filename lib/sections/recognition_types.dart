import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/section_title.dart';

/// Verified achievements versus base (peer) achievements.
class RecognitionTypes extends StatelessComponent {
  const RecognitionTypes({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'riconoscimenti', classes: 'section', [
      div(classes: 'container', [
        const SectionTitle(
          eyebrow: 'Due tipi di riconoscimento',
          title: 'Il valore ufficiale dell’azienda, il calore dei colleghi',
          lead:
              'Ogni achievement è una carta da collezione: si inclina sotto il cursore e si gira '
              'per mostrare chi l’ha assegnata.',
        ),
        div(classes: 'type-grid', [
          _TypeCard(
            variant: 'verified',
            icon: AppIcon.verified,
            title: 'Achievement verificati',
            subtitle: 'Assegnati solo dall’azienda',
            points: const [
              'Fino a 150 XP, in quattro livelli: Bronze, Silver, Gold e Platinum.',
              'Il retro della carta mostra il logo dell’azienda, come un certificato.',
              'Si scaricano come PDF e come credenziale Open Badges 3.0.',
              'Si aggiungono al profilo LinkedIn tra le certificazioni.',
            ],
          ),
          _TypeCard(
            variant: 'peer',
            icon: AppIcon.heart,
            title: 'Achievement base',
            subtitle: 'Inviati tra colleghi',
            points: const [
              'Chiunque li crea, con nome, descrizione, icona e valore: 10, 25 o 50 XP.',
              'Si inviano a un collega con un messaggio facoltativo.',
              'Massimo 5 al mese a testa: restano un gesto che conta, non spam.',
              'Una libreria condivisa da cui tutto il team può attingere.',
            ],
          ),
        ]),
      ]),
    ]);
  }
}

class _TypeCard extends StatelessComponent {
  const _TypeCard({
    required this.variant,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.points,
  });

  final String variant;
  final AppIcon icon;
  final String title;
  final String subtitle;
  final List<String> points;

  @override
  Component build(BuildContext context) {
    return article(classes: 'type-card $variant', [
      div(classes: 'type-card-head', [
        span(classes: 'icon-tile', [Icon(icon, size: 22)]),
        div([
          h3([.text(title)]),
          p(classes: 'muted', [.text(subtitle)]),
        ]),
      ]),
      ul(classes: 'check-list', [
        for (final point in points) li([const Icon(AppIcon.check, size: 16), .text(point)]),
      ]),
    ]);
  }
}
