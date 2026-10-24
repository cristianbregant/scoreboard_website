import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Line icons drawn on a 24×24 grid, in the style of Lucide (ISC license).
enum AppIcon {
  trophy(
    '<path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6"/><path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18"/>'
    '<path d="M4 22h16"/><path d="M10 14.66V17c0 .55-.47.98-.97 1.21C7.85 18.75 7 20.24 7 22"/>'
    '<path d="M14 14.66V17c0 .55.47.98.97 1.21C16.15 18.75 17 20.24 17 22"/>'
    '<path d="M18 2H6v7a6 6 0 0 0 12 0V2Z"/>',
  ),
  verified(
    '<path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 '
    '4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z"/><path d="m9 12 2 2 4-4"/>',
  ),
  heart(
    '<path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2'
    'A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"/>',
  ),
  users(
    '<path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/>'
    '<path d="M22 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/>',
  ),
  bell(
    '<path d="M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9"/><path d="M10.3 21a1.94 1.94 0 0 0 3.4 0"/>',
  ),
  chart('<path d="M3 3v18h18"/><path d="M18 17V9"/><path d="M13 17V5"/><path d="M8 17v-3"/>'),
  shield('<path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10"/><path d="m9 12 2 2 4-4"/>'),
  certificate(
    '<path d="M14.5 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7.5L14.5 2z"/>'
    '<path d="M14 2v6h6"/><path d="M8 13h8"/><path d="M8 17h5"/>',
  ),
  globe(
    '<circle cx="12" cy="12" r="10"/><path d="M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20"/>'
    '<path d="M2 12h20"/>',
  ),
  monitor('<rect width="20" height="14" x="2" y="3" rx="2"/><path d="M8 21h8"/><path d="M12 17v4"/>'),
  calendar(
    '<rect width="18" height="18" x="3" y="4" rx="2"/><path d="M16 2v4"/><path d="M8 2v4"/>'
    '<path d="M3 10h18"/>',
  ),
  message('<path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z"/>'),
  sparkles(
    '<path d="m12 3-1.9 5.8a2 2 0 0 1-1.3 1.3L3 12l5.8 1.9a2 2 0 0 1 1.3 1.3L12 21l1.9-5.8'
    'a2 2 0 0 1 1.3-1.3L21 12l-5.8-1.9a2 2 0 0 1-1.3-1.3Z"/>',
  ),
  accessibility(
    '<circle cx="12" cy="4.5" r="1.5"/><path d="M5 8.5l7 1.5 7-1.5"/><path d="M12 10v5l-3 6"/>'
    '<path d="M12 15l3 6"/>',
  ),
  send('<path d="m22 2-7 20-4-9-9-4Z"/><path d="M22 2 11 13"/>'),
  share(
    '<circle cx="18" cy="5" r="3"/><circle cx="6" cy="12" r="3"/><circle cx="18" cy="19" r="3"/>'
    '<path d="m8.59 13.51 6.83 3.98"/><path d="m15.41 6.51-6.82 3.98"/>',
  ),
  check('<path d="M20 6 9 17l-5-5"/>'),
  arrowRight('<path d="M5 12h14"/><path d="m12 5 7 7-7 7"/>');

  const AppIcon(this.paths);

  final String paths;
}

/// An inline SVG icon that takes the current text color.
class Icon extends StatelessComponent {
  const Icon(this.icon, {this.size = 20, super.key});

  final AppIcon icon;
  final int size;

  @override
  Component build(BuildContext context) {
    return RawText(
      '<svg class="icon" xmlns="http://www.w3.org/2000/svg" width="$size" height="$size" '
      'viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" '
      'stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">${icon.paths}</svg>',
    );
  }
}
