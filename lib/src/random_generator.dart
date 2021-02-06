import 'dart:math';

final random = RandomGenerator();

class RandomGenerator {
  RandomGenerator({int? seed}):
    _random = Random(seed);

  final Random _random;

  /// Plucks a random element from the given [list].
  T element<T>(List<T> list) {
    return list[_random.nextInt(list.length)];
  }

  /// Generates a random number from the [max] value
  /// and by the number of [times].
  ///
  /// Returns a list of numbers.
  List<int> numbers(int max, int times) {
    var number = <int>[];

    for (var i = 0; i < times; i++) {
      number.add(_random.nextInt(max));
    }
    return number;
  }

  /// Generates a random integer with the given [max] value
  /// and to the lowest [min] value if provided.
  ///
  /// Example:
  ///   ```dart
  ///   random.integer(10);
  ///
  ///   random.integer(10, min: 5);
  ///   ```
  int integer(int max, {int min = 0}) =>
      max == min ? max : _random.nextInt(max - min) + min;

  /// Generates a random boolean.
  bool boolean() => _random.nextBool();

  /// Generates a random decimal.
  /// Accepts a [scale] and a [min] value.
  double decimal({num scale = 1, num min = 0}) =>
      _random.nextDouble() * scale + min;

  /// Generates a random string with the given [max] value
  /// and to the lowest [min] value if provided.
  ///
  /// Example:
  ///   ```dart
  ///   random.string(10);
  ///
  ///   random.string(10, min: 5);
  ///   ```
  String string(int max, {int min = 1}) => String.fromCharCodes(
      numbers(92, integer(max, min: min)).map((value) => value + 33));

  /// Generates a list of random length filled by return value of [fn].
  ///
  /// Example:
  ///   ```dart
  ///     random.amount((_) => random.string(10), 10);
  ///
  ///     random.amount((_) => random.string(15), 10, min: 5);
  ///   ```
  List amount(fn(int i), int max, {int min = 1}) {
    var length = integer(max, min: min);
    return List.generate(length, fn);
  }

  /// Generates a random set of numbers from the given [pattern].
  ///
  /// Example:
  ///
  /// ```dart
  ///   fromPattern(['#####', '#####-####']);
  /// ```
  String fromPattern(List pattern) =>
      element(pattern).splitMapJoin('#', onMatch: (_) => numbers(9, 1).join());

  /// Generates a random set of numbers from the given [pattern].
  /// Returns this [pattern] as hex.
  ///
  /// Example:
  ///
  /// ```dart
  ///   fromPatternToHex(['#####', '#####-####']);
  /// ```
  String fromPatternToHex(List pattern) => element(pattern).splitMapJoin('#',
      onMatch: (_) =>
          numbers(16, 1).map((number) => number.toRadixString(16)).join());
}
