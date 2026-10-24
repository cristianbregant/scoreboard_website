import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/icon.dart';
import '../components/section_title.dart';
import '../l10n/l10n.dart';

/// Verified achievements versus base (peer) achievements.
class RecognitionTypes extends StatelessComponent {
  const RecognitionTypes({super.key});

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(id: 'recognition', classes: 'section', [
      div(classes: 'container', [
        SectionTitle(eyebrow: strings.typesEyebrow, title: strings.typesTitle, lead: strings.typesLead),
        div(classes: 'type-grid', [
          _TypeCard(
            variant: 'verified',
            icon: AppIcon.verified,
            title: strings.verifiedTitle,
            subtitle: strings.verifiedSubtitle,
            points: strings.verifiedPoints,
          ),
          _TypeCard(
            variant: 'peer',
            icon: AppIcon.heart,
            title: strings.peerTitle,
            subtitle: strings.peerSubtitle,
            points: strings.peerPoints,
          ),
        ]),
      ]),
    ]);
  }
}

class _TypeCard extends StatelessComponent {
  const _TypeCard({
    required this.variant,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.points,
  });

  final String variant;
  final AppIcon icon;
  final String title;
  final String subtitle;
  final List<String> points;

  @override
  Component build(BuildContext context) {
    return article(classes: 'type-card $variant', [
      div(classes: 'type-card-head', [
        span(classes: 'icon-tile', [Icon(icon, size: 22)]),
        div([
          h3([.text(title)]),
          p(classes: 'muted', [.text(subtitle)]),
        ]),
      ]),
      ul(classes: 'check-list', [
        for (final point in points) li([const Icon(AppIcon.check, size: 16), .text(point)]),
      ]),
    ]);
  }
}
