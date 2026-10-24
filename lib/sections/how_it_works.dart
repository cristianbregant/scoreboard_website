import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/section_title.dart';

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

  static const _steps = [
    ('Configura l’azienda', 'Scegli colore e logo, crea i team e un catalogo di achievement su misura per i vostri valori.'),
    ('Invita le persone', 'Ognuno installa l’app desktop, entra nella propria azienda e completa il profilo.'),
    ('Riconosci e misura', 'Assegna achievement, lascia che i colleghi si ringrazino e segui l’andamento dagli insight.'),
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'section', [
      div(classes: 'container', [
        const SectionTitle(eyebrow: 'Come funziona', title: 'Operativi in un pomeriggio'),
        ol(classes: 'steps', [
          for (final (i, (title, text)) in _steps.indexed)
            li([
              span(classes: 'step-number', [.text('${i + 1}')]),
              h3([.text(title)]),
              p(classes: 'muted', [.text(text)]),
            ]),
        ]),
      ]),
    ]);
  }
}
