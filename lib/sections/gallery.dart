import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/screenshot.dart';
import '../components/section_title.dart';
import '../l10n/l10n.dart';

class Gallery extends StatelessComponent {
  const Gallery({super.key});

  /// One per entry of `Strings.galleryCaptions`.
  static const screens = ['feed', 'achievement-detail', 'your-company', 'profile', 'base-achievements', 'notifications'];

  @override
  Component build(BuildContext context) {
    final strings = context.strings;
    return section(classes: 'section section-alt', [
      div(classes: 'container', [
        SectionTitle(eyebrow: strings.galleryEyebrow, title: strings.galleryTitle),
        div(classes: 'gallery', [
          for (final (i, caption) in strings.galleryCaptions.indexed)
            Screenshot(screens[i], alt: caption, caption: caption),
        ]),
      ]),
    ]);
  }
}
