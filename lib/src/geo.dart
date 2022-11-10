import 'random_generator.dart';

class Geo {
  const Geo(this._random);

  final RandomGenerator _random;

  /// Generates a longitude.
  ///
  /// Example:
  /// ```dart
  /// faker.geo.longitude();
  /// ```
  double longitude() => -180 + _random.decimal() * 180 * 2;

  /// Generates a latitude.
  ///
  /// Example:
  /// ```dart
  /// faker.geo.latitude();
  /// ```
  double latitude() => -90 + _random.decimal() * 90 * 2;
}
