part of faker;

class Person {
  static const _prefixes = const ['Mr.', 'Mrs.', 'Ms.', 'Miss', 'Dr'];

  static const _suffixes = const [
    'Jr.',
    'Sr.',
    'I',
    'II',
    'III',
    'IV',
    'V',
    'MD',
    'DDS',
    'PhD',
    'DVM'
  ];

  /// Generates a name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.name(); // Mrs. Fiona Ward MD
  /// ```
  String name() {
    switch (randomNumber(10, 1).first) {
      case 0:
        return '${randomElement(_prefixes)} ${randomElement(firstnames)} '
            '${randomElement(lastnames)}';
      case 1:
        return '${randomElement(firstnames)} ${randomElement(lastnames)} '
            '${randomElement(_suffixes)}';
      case 2:
        return '${randomElement(_prefixes)} ${randomElement(firstnames)} '
            '${randomElement(lastnames)} ${randomElement(_suffixes)}';
      default:
        return '${randomElement(firstnames)} ${randomElement(lastnames)}';
    }
  }

  /// Generates a first name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.firstName(); // Fiona
  /// ```
  String firstName() => randomElement(firstnames);

  /// Generates a last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.lastName(); // Ward
  /// ```
  String lastName() => randomElement(lastnames);

  /// Generates a prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.prefix(); // Mr.
  /// ```
  String prefix() => randomElement(_prefixes);

  /// Generates a suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.suffix(); // Jr.
  /// ```
  String suffix() => randomElement(_suffixes);
}
