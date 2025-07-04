import 'package:faker/src/providers/base_providers.dart';

import 'random_generator.dart';

class Currency {
  const Currency(this.random, this.dataProvider);

  final RandomGenerator random;

  final CurrencyDataProvider dataProvider;

  /// Generates a currency code.
  ///
  /// Example:
  /// ```dart
  ///   faker.currency.code();
  /// ```
  String code() => random.element(dataProvider.currencyCodes());

  /// Generates a currency name.
  ///
  /// Example:
  /// ```dart
  ///   faker.currency.name();
  /// ```
  String name() => random.element(dataProvider.currencyNames());
}
