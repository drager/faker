import 'data/currency/currency_codes.dart';
import 'data/currency/currency_names.dart';
import 'random_generator.dart';

class Currency {
  const Currency(this._random);

  final RandomGenerator _random;

  /// Generates a currency code.
  ///
  /// Example:
  /// ```dart
  ///   faker.currency.code();
  /// ```
  String code() => _random.element(currencyCodes);

  /// Generates a currency name.
  ///
  /// Example:
  /// ```dart
  ///   faker.currency.name();
  /// ```
  String name() => _random.element(currencyNames);
}
