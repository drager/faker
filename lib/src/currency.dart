part of faker;

class Currency {

  const Currency();

  /// Generates a currency code.
  ///
  /// Example:
  /// ```dart
  ///   faker.currency.code();
  /// ```
  String code() => random.element(currencyCodes);

  /// Generates a currency name.
  ///
  /// Example:
  /// ```dart
  ///   faker.currency.name();
  /// ```
  String name() => random.element(currencyNames);
}
