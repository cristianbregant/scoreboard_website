import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/screenshot.dart';
import '../components/section_title.dart';

class Gallery extends StatelessComponent {
  const Gallery({super.key});

  static const _shots = [
    ('feed', 'Il feed aziendale con reazioni e commenti'),
    ('achievement-detail', 'Il dettaglio di un achievement verificato'),
    ('your-company', 'La pagina dell’azienda, con catalogo e classifica'),
    ('profile', 'Il profilo, con livello e achievement recenti'),
    ('base-achievements', 'La libreria degli achievement base'),
    ('notifications', 'Il centro notifiche'),
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'section section-alt', [
      div(classes: 'container', [
        const SectionTitle(eyebrow: 'Dentro l’app', title: 'Pensata per essere aperta ogni giorno'),
        div(classes: 'gallery', [
          for (final (name, caption) in _shots) Screenshot(name, alt: caption, caption: caption),
        ]),
      ]),
    ]);
  }
}
