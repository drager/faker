import 'data/animals/animals_names.dart';
import 'random_generator.dart';

class Animal {
  const Animal(this._random);

  final RandomGenerator _random;

  /// Generates an animal name.
  ///
  /// Example:
  /// ```dart
  ///   faker.animal.name();
  /// ```
  String name() => _random.element(animalsNames);
}
