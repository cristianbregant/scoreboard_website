import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A screenshot of the app in a window frame. [name] is a file in
/// `web/images/screens`, without extension.
class Screenshot extends StatelessComponent {
  const Screenshot(this.name, {required this.alt, this.caption, this.eager = false, super.key});

  final String name;
  final String alt;
  final String? caption;

  /// Above the fold: load right away instead of lazily.
  final bool eager;

  @override
  Component build(BuildContext context) {
    return figure(classes: 'screenshot', [
      div(classes: 'window', [
        div(classes: 'window-bar', [span([]), span([]), span([])]),
        img(
          src: 'images/screens/$name.jpg',
          alt: alt,
          width: 1600,
          height: 1000,
          loading: eager ? null : MediaLoading.lazy,
        ),
      ]),
      if (caption != null) figcaption([.text(caption!)]),
    ]);
  }
}
