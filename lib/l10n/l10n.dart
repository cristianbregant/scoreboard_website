import 'package:jaspr/jaspr.dart';

import 'strings.dart';
import 'strings_de.dart';
import 'strings_en.dart';
import 'strings_fr.dart';
import 'strings_it.dart';

export 'strings.dart';

/// The languages of the site. Italian is served at the root, the others
/// under their code: `/en/`, `/fr/`, `/de/`.
enum SiteLocale {
  it('it', 'Italiano', 'it_IT', stringsIt),
  en('en', 'English', 'en_US', stringsEn),
  fr('fr', 'Français', 'fr_FR', stringsFr),
  de('de', 'Deutsch', 'de_DE', stringsDe);

  const SiteLocale(this.code, this.name, this.ogLocale, this.strings);

  final String code;

  /// The language's name in that language, for the language menu.
  final String name;
  final String ogLocale;
  final Strings strings;

  static const SiteLocale main = it;

  /// Path of the page relative to the site's base: empty for [main].
  String get path => this == main ? '' : '$code/';

  /// Route the page is rendered at.
  String get route => this == main ? '/' : '/$code';
}

/// Makes the page's locale available to every component below it.
class L10n extends InheritedComponent {
  const L10n({required this.locale, required super.child, super.key});

  final SiteLocale locale;

  @override
  bool updateShouldNotify(L10n oldComponent) => locale != oldComponent.locale;
}

extension L10nContext on BuildContext {
  SiteLocale get locale => dependOnInheritedComponentOfExactType<L10n>()!.locale;

  Strings get strings => locale.strings;

  /// A link to a section of the current page. Links resolve against the
  /// site's `<base>`, so a bare `#id` would lead to the Italian page.
  String anchor(String id) => '${locale.path}#$id';
}
