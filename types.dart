abstract class LanguagePack {
  String domain;
  /* eslint-disable-next-line camelcase */
  dynamic locale_data;
}

abstract class TranslatorConfig {
  LanguagePack languagePack;
}
