import 'package:faker/faker.dart';

class Person {
  const Person(this.random, this.dataProvider);

  final RandomGenerator random;

  final PersonDataProvider dataProvider;

  /// Generates a name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.name(); // Mrs. Fiona Ward MD
  /// ```
  String name() {
    switch (random.integer(10)) {
      case 0:
        return '${random.element(dataProvider.prefixes())} ${random.element(dataProvider.firstNames())} '
            '${random.element(dataProvider.lastNames())}';
      case 1:
        return '${random.element(dataProvider.firstNames())} ${random.element(dataProvider.lastNames())} '
            '${random.element(dataProvider.suffixes())}';
      case 2:
        return '${random.element(dataProvider.prefixes())} ${random.element(dataProvider.firstNames())} '
            '${random.element(dataProvider.lastNames())} ${random.element(dataProvider.suffixes())}';
      default:
        return '${random.element(dataProvider.firstNames())} ${random.element(dataProvider.lastNames())}';
    }
  }

  /// Generates a first name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.firstName(); // Fiona
  /// ```
  String firstName() => random.element(dataProvider.firstNames());

  /// Generates a last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.lastName(); // Ward
  /// ```
  String lastName() => random.element(dataProvider.lastNames());

  /// Generates a prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.prefix(); // Mr.
  /// ```
  String prefix() => random.element(dataProvider.prefixes());

  /// Generates a suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.suffix(); // Jr.
  /// ```
  String suffix() => random.element(dataProvider.suffixes());
}
