import 'person.dart';
import 'random_generator.dart';

class Company {
  static const _companySuffixes = ['Inc', 'and Sons', 'LLC', 'Group'];
  static const _positionPrefixes = [
    'Executive',
    'Assistant',
    'General',
    'Associate'
  ];
  static const _positions = [
    'President',
    'Manager',
    'Director',
    'Secretary',
    'Consultant'
  ];
  static const _positionAreas = [
    'Finance',
    'IT',
    'Operations',
    'Information',
    'Vice',
    'Sales',
    'Marketing',
    'Corporate',
    'Department',
    'Regional',
    'Division'
  ];

  const Company(this.person);

  final Person person;

  RandomGenerator get random => person.random;

  /// Generates a company name.
  ///
  /// Example:
  /// ```dart
  ///   faker.company.name();
  /// ```
  String name() {
    switch (random.integer(3)) {
      case 0:
        return '${person.lastName()} ${suffix()}';
      case 1:
        return '${person.lastName()}-${person.lastName()}';
      case 2:
        return '${person.lastName()}, ${person.lastName()} '
            'and ${person.lastName()}';
      default:
        return '${person.lastName()} ${suffix()}';
    }
  }

  /// Generates a company position.
  ///
  /// Example:
  /// ```dart
  ///   faker.company.position();
  /// ```
  String position() {
    switch (random.integer(3)) {
      case 0:
        return '${random.element(_positionPrefixes)} '
            '${random.element(_positions)}';
      case 1:
        return '${random.element(_positionAreas)} '
            '${random.element(_positions)}';
      case 2:
        return '${random.element(_positionPrefixes)} '
            '${random.element(_positionAreas)} ${random.element(_positions)}';
      default:
        return '${random.element(_positionPrefixes)} '
            '${random.element(_positions)}';
    }
  }

  /// Generates a company suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.company.suffix();
  /// ```
  String suffix() => random.element(_companySuffixes);
}
