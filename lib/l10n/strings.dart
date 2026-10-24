/// Every text of the site in one language. Lists of pairs are (title, text).
class Strings {
  const Strings({
    required this.metaTitle,
    required this.metaDescription,
    required this.navRecognition,
    required this.navFeatures,
    required this.navBusiness,
    required this.navFaq,
    required this.language,
    required this.requestDemo,
    required this.demoSubject,
    required this.heroPill,
    required this.heroTitleStart,
    required this.heroTitleAccent,
    required this.heroTitleEnd,
    required this.heroLead,
    required this.heroSecondaryCta,
    required this.heroPoints,
    required this.heroImageAlt,
    required this.typesEyebrow,
    required this.typesTitle,
    required this.typesLead,
    required this.verifiedTitle,
    required this.verifiedSubtitle,
    required this.verifiedPoints,
    required this.peerTitle,
    required this.peerSubtitle,
    required this.peerPoints,
    required this.featuresEyebrow,
    required this.featuresTitle,
    required this.features,
    required this.consoleEyebrow,
    required this.consoleTitle,
    required this.consoleLead,
    required this.consoleItems,
    required this.consoleInsightsAlt,
    required this.consoleRequestsAlt,
    required this.galleryEyebrow,
    required this.galleryTitle,
    required this.galleryCaptions,
    required this.stepsEyebrow,
    required this.stepsTitle,
    required this.steps,
    required this.qualityEyebrow,
    required this.qualityTitle,
    required this.qualityItems,
    required this.faqEyebrow,
    required this.faqTitle,
    required this.faqs,
    required this.ctaTitle,
    required this.ctaLead,
    required this.ctaDownload,
    required this.footerTagline,
    required this.footerDownload,
    required this.footerLicense,
  });

  final String metaTitle;
  final String metaDescription;

  final String navRecognition;
  final String navFeatures;
  final String navBusiness;
  final String navFaq;
  final String language;
  final String requestDemo;

  /// Subject of the demo request email.
  final String demoSubject;

  final String heroPill;
  final String heroTitleStart;
  final String heroTitleAccent;
  final String heroTitleEnd;
  final String heroLead;
  final String heroSecondaryCta;
  final List<String> heroPoints;
  final String heroImageAlt;

  final String typesEyebrow;
  final String typesTitle;
  final String typesLead;
  final String verifiedTitle;
  final String verifiedSubtitle;
  final List<String> verifiedPoints;
  final String peerTitle;
  final String peerSubtitle;
  final List<String> peerPoints;

  final String featuresEyebrow;
  final String featuresTitle;

  /// In the order of `Features.icons`.
  final List<(String, String)> features;

  final String consoleEyebrow;
  final String consoleTitle;
  final String consoleLead;

  /// In the order of `Console.icons`.
  final List<(String, String)> consoleItems;
  final String consoleInsightsAlt;
  final String consoleRequestsAlt;

  final String galleryEyebrow;
  final String galleryTitle;

  /// In the order of `Gallery.screens`.
  final List<String> galleryCaptions;

  final String stepsEyebrow;
  final String stepsTitle;
  final List<(String, String)> steps;

  final String qualityEyebrow;
  final String qualityTitle;

  /// In the order of `Quality.icons`.
  final List<(String, String)> qualityItems;

  final String faqEyebrow;
  final String faqTitle;

  /// (question, answer).
  final List<(String, String)> faqs;

  final String ctaTitle;
  final String ctaLead;
  final String ctaDownload;

  final String footerTagline;
  final String footerDownload;
  final String footerLicense;
}
