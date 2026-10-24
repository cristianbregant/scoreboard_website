import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/section_title.dart';
import '../l10n/l10n.dart';

class Faq extends StatelessComponent {
  const Faq({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(id: 'faq', classes: 'section', [
      div(classes: 'container narrow', [
        SectionTitle(eyebrow: strings.faqEyebrow, title: strings.faqTitle),
        div(classes: 'faq', [
          for (final (question, answer) in strings.faqs)
            details([
              summary([.text(question)]),
              p(classes: 'muted', [.text(answer)]),
            ]),
        ]),
      ]),
    ]);
  }
}
