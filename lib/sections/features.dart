import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/section_title.dart';

class Features extends StatelessComponent {
  const Features({super.key});

  static const _features = [
    (
      AppIcon.trophy,
      'Classifiche e livelli',
      'La classifica della tua azienda con il podio dei primi tre, e quella della community con tutte le aziende. '
          'Chi preferisce può restare visibile solo ai colleghi.',
    ),
    (
      AppIcon.message,
      'Feed aziendale',
      'Ogni achievement ricevuto diventa un post, con reazioni e commenti. I successi si festeggiano insieme.',
    ),
    (
      AppIcon.send,
      'Richieste e proposte',
      'Le persone chiedono un achievement del catalogo allegando un link come prova; i manager lo propongono per il proprio team.',
    ),
    (
      AppIcon.users,
      'Vista per i manager',
      'Come viene riconosciuto ogni membro del team, chi non riceve nulla da un mese e una scorciatoia per rimediare.',
    ),
    (
      AppIcon.calendar,
      'Stagioni',
      'Periodi con la propria classifica, giorni rimanenti e podio: una sana competizione che riparte a ogni stagione.',
    ),
    (
      AppIcon.bell,
      'Notifiche',
      'Achievement ricevuti, salti di livello, esiti delle richieste, reazioni e un riepilogo settimanale, anche come notifiche di sistema.',
    ),
    (
      AppIcon.share,
      'Condivisione su LinkedIn',
      'Un post con il testo già pronto, la certificazione sul profilo e un’immagine della carta in formato 1200×627.',
    ),
    (
      AppIcon.sparkles,
      'Anniversari automatici',
      'Un achievement verificato a ogni anniversario di lavoro scelto dall’azienda: 1, 2, 3, 5, 10, 15 o 20 anni.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'funzionalita', classes: 'section section-alt', [
      div(classes: 'container', [
        const SectionTitle(
          eyebrow: 'Funzionalità',
          title: 'Tutto quello che serve per riconoscere il lavoro ben fatto',
        ),
        div(classes: 'feature-grid', [
          for (final (icon, title, text) in _features)
            article(classes: 'feature-card', [
              span(classes: 'icon-tile', [Icon(icon)]),
              h3([.text(title)]),
              p(classes: 'muted', [.text(text)]),
            ]),
        ]),
      ]),
    ]);
  }
}
