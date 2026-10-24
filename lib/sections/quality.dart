import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/section_title.dart';
import '../l10n/l10n.dart';

/// Platforms, languages, accessibility and data handling.
class Quality extends StatelessComponent {
  const Quality({super.key});

  /// One per entry of `Strings.qualityItems`.
  static const icons = [AppIcon.monitor, AppIcon.globe, AppIcon.accessibility, AppIcon.shield];

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(classes: 'section section-alt', [
      div(classes: 'container', [
        SectionTitle(eyebrow: strings.qualityEyebrow, title: strings.qualityTitle),
        div(classes: 'quality-grid', [
          for (final (i, (title, text)) in strings.qualityItems.indexed)
            div(classes: 'quality-item', [
              span(classes: 'icon-tile', [Icon(icons[i])]),
              h3([.text(title)]),
              p(classes: 'muted', [.text(text)]),
            ]),
        ]),
      ]),
    ]);
  }
}
