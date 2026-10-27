import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/screenshot.dart';
import '../components/section_title.dart';
import '../l10n/l10n.dart';

/// The company console, for HR and admins.
class Console extends StatelessComponent {
  const Console({super.key});

  /// One per entry of `Strings.consoleItems`.
  static const icons = [
    AppIcon.verified,
    AppIcon.check,
    AppIcon.users,
    AppIcon.chart,
    AppIcon.certificate,
    AppIcon.shield,
  ];

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(id: 'companies', classes: 'section', [
      div(classes: 'container split', [
        div([
          SectionTitle(
            eyebrow: strings.consoleEyebrow,
            title: strings.consoleTitle,
            lead: strings.consoleLead,
            centered: false,
          ),
          ul(classes: 'console-list', [
            for (final (i, (title, text)) in strings.consoleItems.indexed)
              li([
                span(classes: 'list-icon', [Icon(icons[i], size: 18)]),
                div([
                  strong([.text(title)]),
                  p(classes: 'muted', [.text(text)]),
                ]),
              ]),
          ]),
        ]),
        div(classes: 'stack', [
          Screenshot('console-insights', alt: strings.consoleInsightsAlt),
          Screenshot('console-requests', alt: strings.consoleRequestsAlt),
        ]),
      ]),
    ]);
  }
}
