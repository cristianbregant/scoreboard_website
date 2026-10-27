import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/section_title.dart';
import '../l10n/l10n.dart';

class Features extends StatelessComponent {
  const Features({super.key});

  /// One per entry of `Strings.features`.
  static const icons = [
    AppIcon.trophy,
    AppIcon.message,
    AppIcon.send,
    AppIcon.users,
    AppIcon.calendar,
    AppIcon.bell,
    AppIcon.share,
    AppIcon.sparkles,
  ];

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(id: 'features', classes: 'section section-alt', [
      div(classes: 'container', [
        SectionTitle(eyebrow: strings.featuresEyebrow, title: strings.featuresTitle),
        div(classes: 'feature-grid', [
          for (final (i, (title, text)) in strings.features.indexed)
            article(classes: 'feature', [
              h3([Icon(icons[i], size: 18), .text(title)]),
              p(classes: 'muted', [.text(text)]),
            ]),
        ]),
      ]),
    ]);
  }
}
