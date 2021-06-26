import 'dart:math';

final random = RandomGenerator();

class RandomGenerator {
  RandomGenerator({int? seed}) : _random = Random(seed);

  final Random _random;

  /// Plucks a random element from the given [list].
  T element<T>(List<T> list) {
    return list[_random.nextInt(list.length)];
  }

  /// Plucks a random key from the given [map].
  T mapElementKey<T>(Map<dynamic, dynamic> map) {
    return map.keys.elementAt(_random.nextInt(map.length));
  }

  /// Plucks a random value from the given [map].
  T mapElementValue<T>(Map<dynamic, dynamic> map) {
    return map.values.elementAt(_random.nextInt(map.length));
  }

  /// Generates a random number from the [max] value
  /// and by the number of [times].
  ///
  /// Returns a list of numbers.
  List<int> numbers(num max, num times) {
    var number = <int>[];

    for (var i = 0; i < times; i++) {
      number.add(_random.nextInt(max as int));
    }
    return number;
  }

  /// Generates a random integer with the given [max] (exclusive) value
  /// and to the lowest [min] (inclusive) value if provided.
  ///
  /// Example:
  ///   ```dart
  ///   random.integer(10);
  ///
  ///   random.integer(10, min: 5);
  ///   ```
  int integer(int max, {int min = 0}) =>
      max == min ? max : _random.nextInt(max - min) + min;

  /// Generates a random string of numbers with a number of characters equal to [length]
  ///
  /// Example
  /// ```dart
  /// random.numberOfLength(10);
  /// ```
  String numberOfLength(int length) => numbers(10, length).join();

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
  List<T> amount<T>(T Function(int i) generator, int max, {int min = 1}) {
    var length = integer(max, min: min);
    return List.generate(length, generator);
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

  /// Generated a random string from the given string of chracters.
  ///
  /// Example:
  ///
  /// ``` dart
  ///   fromCharSet('ABCDEFGHIJKLMONPQESTUVWXYZ!?@#$$%');
  /// ```
  String fromCharSet(String charSet, int length) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) => charSet.codeUnitAt(_random.nextInt(charSet.length))));
}
