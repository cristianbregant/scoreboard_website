import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/section_title.dart';

/// Platforms, languages, accessibility and data handling.
class Quality extends StatelessComponent {
  const Quality({super.key});

  static const _items = [
    (
      AppIcon.monitor,
      'Nativa sul desktop',
      'macOS, Windows e Linux, con icona nella barra dei menu, scorciatoie da tastiera e aggiornamenti automatici.',
    ),
    (AppIcon.globe, 'In 5 lingue', 'Italiano, inglese, spagnolo, francese e tedesco, con temi chiaro e scuro.'),
    (
      AppIcon.accessibility,
      'Accessibile',
      'Uso completo da tastiera, supporto a VoiceOver, Narrator e Orca, contrasto WCAG AA e animazioni ridotte.',
    ),
    (
      AppIcon.shield,
      'Dati sotto controllo',
      'Export dei dati di una persona in JSON, registro di ogni azione amministrativa e classifiche pubbliche facoltative.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'section section-alt', [
      div(classes: 'container', [
        const SectionTitle(eyebrow: 'Fatta con cura', title: 'Pronta per tutto il team, non solo per qualcuno'),
        div(classes: 'quality-grid', [
          for (final (icon, title, text) in _items)
            div(classes: 'quality-item', [
              span(classes: 'icon-tile', [Icon(icon)]),
              h3([.text(title)]),
              p(classes: 'muted', [.text(text)]),
            ]),
        ]),
      ]),
    ]);
  }
}
