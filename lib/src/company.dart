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

  const Company(this._person, this._random);

  final Person _person;

  final RandomGenerator _random;

  /// Generates a company name.
  ///
  /// Example:
  /// ```dart
  ///   faker.company.name();
  /// ```
  String name() {
    switch (_random.integer(3)) {
      case 0:
        return '${_person.lastName()} ${suffix()}';
      case 1:
        return '${_person.lastName()}-${_person.lastName()}';
      case 2:
        return '${_person.lastName()}, ${_person.lastName()} '
            'and ${_person.lastName()}';
      default:
        return '${_person.lastName()} ${suffix()}';
    }
  }

  /// Generates a company position.
  ///
  /// Example:
  /// ```dart
  ///   faker.company.position();
  /// ```
  String position() {
    switch (_random.integer(3)) {
      case 0:
        return '${_random.element(_positionPrefixes)} '
            '${_random.element(_positions)}';
      case 1:
        return '${_random.element(_positionAreas)} '
            '${_random.element(_positions)}';
      case 2:
        return '${_random.element(_positionPrefixes)} '
            '${_random.element(_positionAreas)} ${_random.element(_positions)}';
      default:
        return '${_random.element(_positionPrefixes)} '
            '${_random.element(_positions)}';
    }
  }

  /// Generates a company suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.company.suffix();
  /// ```
  String suffix() => _random.element(_companySuffixes);
}
