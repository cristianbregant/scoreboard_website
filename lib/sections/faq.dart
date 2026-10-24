import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/section_title.dart';

class Faq extends StatelessComponent {
  const Faq({super.key});

  static const _questions = [
    (
      'Chi può assegnare un achievement verificato?',
      'Solo gli amministratori dell’azienda, dalla console. Le persone possono chiederne uno dal catalogo e i manager possono proporlo per il proprio team: la richiesta arriva agli amministratori, che la approvano o la rifiutano.',
    ),
    (
      'Come evitate che i riconoscimenti tra colleghi diventino spam?',
      'Ognuno può inviare al massimo 5 achievement base al mese, e lo stesso achievement non si può inviare due volte alla stessa persona.',
    ),
    (
      'Su quali sistemi funziona?',
      'Scoreboard è un’app desktop per macOS, Windows e Linux. Le nuove versioni vengono segnalate direttamente nell’app.',
    ),
    (
      'Possiamo usare il nostro marchio?',
      'Sì. Gli amministratori scelgono un colore d’accento e un logo che sostituiscono quelli di Scoreboard per tutta l’azienda; il colore viene adattato a ogni tema per restare leggibile.',
    ),
    (
      'Come gestite le richieste sui dati personali?',
      'Dalla console si esporta in JSON tutto ciò che riguarda una persona. Ogni export e ogni azione amministrativa finisce nel registro attività.',
    ),
    (
      'Gli achievement valgono anche fuori dall’azienda?',
      'Quelli verificati sì: si scaricano come certificato PDF e come credenziale Open Badges 3.0, e si aggiungono a LinkedIn tra licenze e certificazioni.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'faq', classes: 'section', [
      div(classes: 'container narrow', [
        const SectionTitle(eyebrow: 'FAQ', title: 'Domande frequenti'),
        div(classes: 'faq', [
          for (final (question, answer) in _questions)
            details([
              summary([.text(question)]),
              p(classes: 'muted', [.text(answer)]),
            ]),
        ]),
      ]),
    ]);
  }
}
