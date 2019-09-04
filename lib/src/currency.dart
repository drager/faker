import 'random_generator.dart';
import 'data/currency/currency_codes.dart';
import 'data/currency/currency_names.dart';

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
