import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/section_title.dart';
import '../l10n/l10n.dart';

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(classes: 'section', [
      div(classes: 'container', [
        SectionTitle(eyebrow: strings.stepsEyebrow, title: strings.stepsTitle),
        ol(classes: 'steps', [
          for (final (i, (title, text)) in strings.steps.indexed)
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
