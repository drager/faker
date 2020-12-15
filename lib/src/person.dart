import 'package:faker/faker.dart';

import 'random_generator.dart';

class Person {
  final PersonDataProvider provider;

  const Person(this.provider);

  /// Generates a name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.name(); // Mrs. Fiona Ward MD
  /// ```
  String name() {
    switch (random.integer(10)) {
      case 0:
        return '${random.element(provider.prefixes())} ${random.element(provider.firstNames())} '
            '${random.element(provider.lastNames())}';
      case 1:
        return '${random.element(provider.firstNames())} ${random.element(provider.lastNames())} '
            '${random.element(provider.suffixes())}';
      case 2:
        return '${random.element(provider.prefixes())} ${random.element(provider.firstNames())} '
            '${random.element(provider.lastNames())} ${random.element(provider.suffixes())}';
      default:
        return '${random.element(provider.firstNames())} ${random.element(provider.lastNames())}';
    }
  }

  /// Generates a name containing only first name and last name. without any prefixes or suffixes
  ///
  /// Example:
  /// ```dart
  ///   faker.person.name(); // Fiona Ward
  /// ``
  String fullName() => '${random.element(provider.firstNames())} ${random.element(provider.lastNames())}';

  /// Generates a first name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.firstName(); // Fiona
  /// ```
  String firstName() => random.element(provider.firstNames());

  /// Generates a last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.lastName(); // Ward
  /// ```
  String lastName() => random.element(provider.lastNames());

  /// Generates a prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.prefix(); // Mr.
  /// ```
  String prefix() => random.element(provider.prefixes());

  /// Generates a suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.suffix(); // Jr.
  /// ```
  String suffix() => random.element(provider.suffixes());
}
