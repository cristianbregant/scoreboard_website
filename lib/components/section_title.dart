import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Eyebrow, heading and lead paragraph that open a section.
class SectionTitle extends StatelessComponent {
  const SectionTitle({required this.eyebrow, required this.title, this.lead, this.centered = false, super.key});

  final String eyebrow;
  final String title;
  final String? lead;
  final bool centered;

  @override
  Component build(BuildContext context) {
    return div(classes: centered ? 'section-title centered' : 'section-title', [
      span(classes: 'eyebrow', [.text(eyebrow)]),
      h2([.text(title)]),
      if (lead != null) p(classes: 'lead', [.text(lead!)]),
    ]);
  }
}
