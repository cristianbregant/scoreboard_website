import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/screenshot.dart';
import '../components/section_title.dart';

/// The company console, for HR and admins.
class Console extends StatelessComponent {
  const Console({super.key});

  static const _items = [
    (AppIcon.verified, 'Catalogo', 'Crea, modifica e archivia gli achievement verificati e assegnali a più persone insieme.'),
    (AppIcon.check, 'Approvazioni', 'Approva o rifiuta richieste e proposte, con prove allegate e una motivazione.'),
    (AppIcon.users, 'Team', 'Crea i team, assegna un manager e sposta le persone tra un team e l’altro.'),
    (AppIcon.chart, 'Insight', 'Attività mensile, andamento a 6 mesi, chi ha bisogno di riconoscimento e chi riconosce di più.'),
    (AppIcon.certificate, 'Report per HR', 'CSV pronti per Excel ed export JSON dei dati di una persona per le richieste GDPR.'),
    (AppIcon.shield, 'Registro attività', 'Ogni azione degli amministratori e ogni export, con chi l’ha fatto e quando.'),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'console', classes: 'section', [
      div(classes: 'container split', [
        div([
          const SectionTitle(
            eyebrow: 'Per le aziende',
            title: 'Una console dedicata a chi gestisce il riconoscimento',
            lead:
                'Gli amministratori attivano la modalità admin e l’app cambia colore: '
                'gestire l’azienda non si confonde mai con l’uso quotidiano. '
                'Con il colore e il logo aziendale, Scoreboard diventa vostro.',
            centered: false,
          ),
          ul(classes: 'console-list', [
            for (final (icon, title, text) in _items)
              li([
                span(classes: 'icon-tile small', [Icon(icon, size: 18)]),
                div([
                  strong([.text(title)]),
                  p(classes: 'muted', [.text(text)]),
                ]),
              ]),
          ]),
        ]),
        div(classes: 'stack', [
          const Screenshot('console-insights', alt: 'Console aziendale: insight sull’attività di riconoscimento'),
          const Screenshot('console-requests', alt: 'Console aziendale: richieste da approvare'),
        ]),
      ]),
    ]);
  }
}
