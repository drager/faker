import 'data/person/firstnames.dart';
import 'data/person/lastnames.dart';
import 'random_generator.dart';

class Person {
  static const _prefixes = ['Mr.', 'Mrs.', 'Ms.', 'Miss', 'Dr'];

  static const _suffixes = [
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

  const Person(this._random);

  final RandomGenerator _random;

  /// Generates a name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.name(); // Mrs. Fiona Ward MD
  /// ```
  String name() {
    switch (_random.integer(10)) {
      case 0:
        return '${_random.element(_prefixes)} ${_random.element(firstnames)} '
            '${_random.element(lastnames)}';
      case 1:
        return '${_random.element(firstnames)} ${_random.element(lastnames)} '
            '${_random.element(_suffixes)}';
      case 2:
        return '${_random.element(_prefixes)} ${_random.element(firstnames)} '
            '${_random.element(lastnames)} ${_random.element(_suffixes)}';
      default:
        return '${_random.element(firstnames)} ${_random.element(lastnames)}';
    }
  }

  /// Generates a first name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.firstName(); // Fiona
  /// ```
  String firstName() => _random.element(firstnames);

  /// Generates a last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.lastName(); // Ward
  /// ```
  String lastName() => _random.element(lastnames);

  /// Generates a prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.prefix(); // Mr.
  /// ```
  String prefix() => _random.element(_prefixes);

  /// Generates a suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.suffix(); // Jr.
  /// ```
  String suffix() => _random.element(_suffixes);
}
